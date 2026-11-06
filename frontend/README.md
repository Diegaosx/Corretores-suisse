# TrustCore Frontend

The Angular dashboard for TrustCore (trustcore.ch): login, role-based menus, offers, customers, templates and the field builder. It's built on the ngx-admin template (Nebular UI) and talks to the Laravel API in `../Trustcore-Backend/`.

This README gets the dashboard running on a new machine and covers how to ship a production build. For how the app works, read the Developer Guide in `../Documentation/`.

## What you need

- **Node.js 18.** This is Angular 15. Newer Node versions break the `ngcc` step that runs after install (it fails on Node 23), and Angular 15 doesn't support Node 20+ anyway. If your machine has a newer Node, install 18 alongside it with nvm (`nvm install 18 && nvm use 18`) or Homebrew's `node@18`.
- npm 8 or newer (comes with Node 18)
- The TrustCore backend running locally (see `../Trustcore-Backend/README.md`)

Check with `node -v`. It should print `v18.x`.

## Setting it up

### 1. Install dependencies

```bash
cd Trustcore-Frontend
npm install --legacy-peer-deps
```

The `--legacy-peer-deps` flag is required. `package.json` still pins `@angular/google-maps@^12.2.13` from before the rest of the app moved to Angular 15, and npm refuses that combination without the flag (`ERESOLVE`). The install takes a few minutes and ends by compiling some older libraries through `ngcc`. That step is expected.

`node_modules/` isn't included in the package because npm rebuilds it from `package.json` and `package-lock.json`.

### 2. Point it at the API

The API address lives in two files:

| File | Used by | Points to |
| --- | --- | --- |
| `src/environments/environment.ts` | `ng serve` and normal builds | `http://127.0.0.1:8000/api/` (your local backend) |
| `src/environments/environment.prod.ts` | Production builds | `https://trustcore.ch/trustcore/trustcore-backend/public/api/` |

If your local backend runs on the default `php artisan serve` port, there's nothing to change. If it doesn't, edit `baseEndpoint` and `backendbaseEndpoint` in `environment.ts`.

### 3. Run it

```bash
npx ng serve
```

Open `http://localhost:4200` and log in with an account from the imported database. Use `npx ng serve --port 4201` if 4200 is taken.

What you see after login depends on the account's role. Admin, employee and customer each get a different menu.

## Checking it works

- The login screen loads and a valid account lands on the Dashboard.
- Offers, then List Offers, shows the offers from the database.
- The browser's developer tools show API calls going to `127.0.0.1:8000`, not to trustcore.ch.

If calls are going to trustcore.ch, you're running a production build. Use `ng serve`, or check `environment.ts`.

**Don't create offers on a local setup.** The backend currently hands every new offer to the production Power Automate flow. The backend README explains why.

## Building for production

```bash
npm run build:prod
```

The build lands in `dist/ngx-admin/`. Each build gets new hashed file names (`main.<hash>.js` and so on), and `index.html` points at the current ones.

### Deploying to Hoststar

On the live host the build sits in a `trustcore/` folder under the web root, and the Laravel backend lives inside it:

```
web root/
├── .htaccess                  deploy/web-root.htaccess
└── trustcore/
    ├── .htaccess              deploy/app-folder.htaccess
    ├── index.html, *.js, ...  contents of dist/ngx-admin/
    └── trustcore-backend/     the Laravel app, don't touch when deploying the frontend
```

1. Run `npm run build:prod`.
2. Upload everything inside `dist/ngx-admin/` into `trustcore/` on the server, replacing what's there.
3. Don't delete `trustcore/trustcore-backend/` or `trustcore/.htaccess`.
4. Old hashed bundles from earlier builds can be removed once the new `index.html` is live. Anything `index.html` no longer references is dead weight.

The two `.htaccess` files in `deploy/` are copies of what's on the server. The web root one sends every request into `trustcore/`. The app folder one routes deep links to `index.html` so Angular's router can handle them, never caches `index.html`, and caches hashed assets for a year. If you ever set up a new host, put them back in those two places.

## Where things are

| Path | What's there |
| --- | --- |
| `src/app/auth/custom-password-auth-strategy.ts` | Login and forgot-password calls; stores the token and user in localStorage |
| `src/app/auth.guard.ts` | Route guard (its role check is unfinished, see the Developer Guide) |
| `src/app/pages/pages-menu.ts` | The sidebar menu and which roles see which items |
| `src/app/pages/pages-routing.module.ts` | All routes under `/pages/` |
| `src/app/components/entryedit/` | The generic create/edit form; picks the input type from each field's name prefix |
| `src/app/components/collections/` | Collection lists and the generic entry table |
| `src/app/components/blueprint/` | The template field builder |
| `src/app/components/users/` | User and customer management, PDF and Excel export |
| `src/app/services/` | Every API call, grouped by area |
| `src/app/translations/` | Menu label translations |

Most folders under `src/app/pages/` (charts, maps, e-commerce and so on) are ngx-admin demo pages that TrustCore doesn't use.

## Useful commands

| Command | What it does |
| --- | --- |
| `npx ng serve` | Dev server with live reload on port 4200 |
| `npm run build` | Development build into `dist/ngx-admin/` |
| `npm run build:prod` | Production build (uses `environment.prod.ts`) |
| `npm run lint` | Lint the TypeScript |

## Common problems

| Problem | Fix |
| --- | --- |
| `npm ERR! ERESOLVE could not resolve` | Add `--legacy-peer-deps` to the install. |
| `ngcc` errors or crashes during install | You're not on Node 18. Switch, delete `node_modules/`, install again. |
| Login says "Something went wrong" | The backend isn't running, or `baseEndpoint` in `environment.ts` is wrong. |
| Logged in but menus are empty or wrong | The account has no role in `user_roles`, or localStorage holds an old user. Log out, clear site data, log in again. |
| Deep links show a 404 on the server | `trustcore/.htaccess` is missing. Restore it from `deploy/app-folder.htaccess`. |
| Users still see the old version after a deploy | `index.html` is cached somewhere. Check that `trustcore/.htaccess` is in place, then hard refresh. |
