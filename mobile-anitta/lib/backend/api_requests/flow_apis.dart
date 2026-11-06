import 'package:anitta/flutter_flow/flutter_flow_util.dart';
import 'package:anitta/models/customer.dart';
import 'package:anitta/models/template.dart';
import 'package:http/http.dart' as http;

class FlowApis {
  static Future<bool> demoAutomation() async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    final config = await db.collection("config").doc("global").get();

    String workflowUrl = config['workflow_url'];

    final response = await http.post(
      Uri.parse(workflowUrl),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    if (response.statusCode == 200 || response.statusCode == 201 || response.statusCode == 202) {
      return true;
    }

    return false;
  }

  static Future<String> getDescription() async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer 85|J87NzC5n2Btghkrid4ePvOnLPeCZljuH86WAsX2me6e53d8b',
    };

    Uri uri = Uri.parse(
      'https://trustcode.techsolsint.com/trustcore-backend/public/api/collections/offers/entry-detail/20?cleandata=true',
    );

    final response = await http.get(
      uri,
      headers: headers,
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      return data["entry"]["rel_templates_col_collections"]["selected"]["textarea_template_description"].toString();
    }

    return "";
  }

  static Future<List<Template>> getTemplates() async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    final config = await db.collection("config").doc("global").get();

    String templatesUrl = config['templates_url'];

    String description = await getDescription();

    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer 85|J87NzC5n2Btghkrid4ePvOnLPeCZljuH86WAsX2me6e53d8b',
    };

    Uri uri = Uri.parse(templatesUrl);

    final response = await http.get(
      uri,
      headers: headers,
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      return data["collection"].map<Template>((item) {
        return Template.fromMap(item, defaultDescription: description);
      }).toList();
    }

    return [];
  }

  static Future<List<Customer>> getAllCustomers() async {
    FirebaseFirestore db = FirebaseFirestore.instance;
    final config = await db.collection("config").doc("global").get();

    String customerUrl = config['customers_url'];

    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer 85|J87NzC5n2Btghkrid4ePvOnLPeCZljuH86WAsX2me6e53d8b',
    };

    Uri uri = Uri.parse(customerUrl);

    final response = await http.get(
      uri,
      headers: headers,
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      return data["data"].map<Customer>((item) {
        return Customer.fromMap(item);
      }).toList();
    }

    return [];
  }

  static Future<bool> createCustomerOffer(
    Customer customer,
    Template template,
  ) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer 85|J87NzC5n2Btghkrid4ePvOnLPeCZljuH86WAsX2me6e53d8b',
    };

    Uri uri = Uri.parse(
      'https://trustcode.techsolsint.com/trustcore-backend/public/api/collections/offers/entry/create',
    );

    final body = jsonEncode({
      "rel_customer_req_col_users": customer.id,
      "rel_templates_req_col_collections": template.handle,
      "text_meta_title_req": template.name,
    });

    final response = await http.post(
      uri,
      headers: headers,
      body: body,
    );

    if (response.statusCode == 201) {
      var data = jsonDecode(response.body);

      return true;
    }

    return false;
  }
}
