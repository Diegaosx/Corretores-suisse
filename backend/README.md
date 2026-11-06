# TrustCore Backend

The Laravel 11 API behind the TrustCore dashboard (trustcore.ch). It handles logins, the Collections content model that holds offers, customers, insurers and products, offer PDF storage, and the hand-off to the Power Automate flow that builds offer documents.

This README gets the API running on a new machine. For how the system works, read the Developer Guide in `../Documentation/`.

## What you need

- PHP 8.2 or newer, with the `pdo_mysql`, `mbstring`, `openssl`, `fileinfo`, `curl` and `xml` extensions
- Composer 2
- MySQL 8 (MariaDB 10.6+ should also work, but only MySQL 8 has been tested)
- The database export, `TrustcoreDB.sql`, which sits next to this folder in the handover package

Check PHP with `php -v` and `php -m`.

## Setting it up

### 1. Install dependencies

```bash
cd Trustcore-Backend
composer install
```

The `vendor/` folder isn't included in the package because Composer rebuilds it from `composer.json` and `composer.lock`.

### 2. Create the environment file

```bash
cp .env.example .env
php artisan key:generate
```

`.env.example` is already set up for TrustCore (MySQL, file sessions, database cache and queue). Open `.env` and fill in your local database details:

```
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=trustcore
DB_USERNAME=root
DB_PASSWORD=your-local-password
```

If the Angular frontend will run somewhere other than `http://localhost:4200`, change `FRONTEND_URL` to match.

### 3. Load the database

```bash
mysql -u root -p -e "CREATE DATABASE trustcore CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
mysql -u root -p trustcore < ../TrustcoreDB.sql
```

This gives you roughly 80 tables with the production data as of 22 October 2026, including real customer records. Treat any copy of it accordingly.

**Don't run `php artisan migrate` on top of this import.** Three migrations (settings, templates, templates_meta) show as pending even though their tables are already in the export, so migrate fails on them. Only run migrations when you're building an empty database from scratch.

### 4. Permissions

```bash
chmod -R 775 storage bootstrap/cache
```

On a server, make sure the web server user owns those two folders.

`public/storage` is a real folder in this project (it holds the uploaded company logo), not the symlink Laravel normally creates. Leave it alone. `php artisan storage:link` will only report that it already exists.

### 5. Run it

```bash
php artisan serve --host=127.0.0.1 --port=8000
```

The API is now at `http://127.0.0.1:8000/api/`.

## Checking it works

1. `php artisan about` should show the `mysql` database driver and the `local` environment.
2. Open `http://127.0.0.1:8000/api/settings` in a browser. You should see the company name and logo path, with no login needed.
3. Log in through the API with an account from the imported data:

   ```bash
   curl -X POST http://127.0.0.1:8000/api/login \
     -H "Content-Type: application/json" -H "Accept: application/json" \
     -d '{"email":"user@example.com","password":"..."}'
   ```

   A working setup answers 200 with a `user` object (roles included) and a `token`.

If all three pass, start the frontend (see `../Trustcore-Frontend/README.md`) and log in through the dashboard.

## Important: creating offers on a non-production copy

When an offer is created, `CollectionMetaController::createOffer()` posts the new offer's ID to a Power Automate flow. That flow's address is currently hard-coded to the **production** flow, so creating an offer on a local or staging copy starts the real flow with an ID that, in production, belongs to a different offer.

Until the address is moved into `.env` (the Developer Guide suggests `OFFER_FLOW_URL`), don't create offers anywhere but production. Viewing, editing and everything else is safe.

## Deploying to production

On the current host (Hoststar shared hosting) the backend lives inside the frontend's web folder:

```
web root/
├── .htaccess                  rewrites everything into trustcore/
└── trustcore/                 Angular build
    └── trustcore-backend/     this Laravel app
        └── public/            Laravel's front controller
```

That's why the API's production address is `https://trustcore.ch/trustcore/trustcore-backend/public/api/`. If you move the backend, update `baseEndpoint` and `backendbaseEndpoint` in the frontend's `src/environments/environment.prod.ts` and rebuild the frontend.

To deploy changes:

1. Upload the changed files. Never overwrite the server's `.env`. It holds the production database credentials and `APP_KEY`, and changing the key logs everyone out.
2. Run `composer install --no-dev --optimize-autoloader` on the server if dependencies changed. If the host has no shell, run it locally and upload `vendor/`.
3. Clear Laravel's caches: `php artisan optimize:clear`, or call `GET /api/clear-cache`.

Production `.env` values worth checking while you're there: `APP_ENV=production`, `APP_DEBUG=false` (it's currently `true`), and `APP_URL` set to the real address.

## Where things are

| Path | What's there |
| --- | --- |
| `routes/api.php` | Every API route, including the offer webhooks and SMS endpoints |
| `app/Http/Controllers/CollectionController.php` | Collections and their fields |
| `app/Http/Controllers/CollectionMetaController.php` | Entries in any collection, offer creation, the Power Automate hand-off and its callbacks |
| `app/Http/Controllers/SmsController.php` | Inbound SMS and the latest one-time code |
| `app/Http/Controllers/Auth/` | Login, logout, registration, password reset |
| `app/Models/` | `User`, `Role`, `Setting`, `Collections`, `Templates`, `TemplatesMeta`, `UserMeta` |
| `public/assets/offers/` | Offer PDFs returned by the flow |
| `resources/translations/` | Field and label translations used by the API |

## Common problems

| Problem | Fix |
| --- | --- |
| `SQLSTATE[HY000] [2002]` on any request | MySQL isn't running, or `DB_HOST`/`DB_PORT` is wrong. On MAMP the port is usually 8889. |
| `No application encryption key has been specified` | Run `php artisan key:generate`. |
| Every protected route redirects to `/login` | You're calling it without a token. Send `Authorization: Bearer <token>` from the login response. |
| `Base table or view already exists` | Someone ran `migrate` on the imported database. Drop the database and re-import `TrustcoreDB.sql`. |
| Uploads or logs fail with permission errors | Fix ownership and permissions on `storage/` and `bootstrap/cache/`. |
| Offer stuck at "Creating Offer" | The Power Automate flow didn't call back. See section 5 of the Developer Guide. |
