import 'dart:convert';

import 'package:http/http.dart' as http;

class Package {
  final String name;
  final String? latestVersion;
  final String? description;

  Package(this.name, this.latestVersion, this.description);

  @override
  String toString() {
    return 'Package{name: $name, latestVersion: $latestVersion, description: $description}';
  }
}

void main() async {
  final httpPackageUrl = Uri.https('dart.dev', '/f/packages/http.json');
  final httpPackageResponse = await http.get(httpPackageUrl);
  if (httpPackageResponse.statusCode != 200){
    print('Failed to retrieve the http package!');
    return;
  }
  final json = jsonDecode(httpPackageResponse.body);
  final httpPackage = Package(
    json['name'],
    json['latest_version'],
    json['description'],
  );
  print(httpPackage);
}