// beer_model.dart
class Beermodel {
  String? id;
  String? name;
  String? breweryType;
  String? address1;
  String? address2;
  String? address3;
  String? city;
  String? stateProvince;
  String? postalCode;
  String? country;
  String? longitude;
  String? latitude;
  String? phone;
  String? websiteUrl;
  String? state;
  String? street;

  Beermodel({
    this.id,
    this.name,
    this.breweryType,
    this.address1,
    this.address2,
    this.address3,
    this.city,
    this.stateProvince,
    this.postalCode,
    this.country,
    this.longitude,
    this.latitude,
    this.phone,
    this.websiteUrl,
    this.state,
    this.street,
  });

  factory Beermodel.fromJson(Map<String, dynamic> json) {
    return Beermodel(
      id: json['id'],
      name: json['name'],
      breweryType: json['brewery_type'],
      address1: json['street'],
      address2: json['address_2'],
      address3: json['address_3'],
      city: json['city'],
      stateProvince: json['state'],
      postalCode: json['postal_code'],
      country: json['country'],
      longitude: json['longitude'],
      latitude: json['latitude'],
      phone: json['phone'],
      websiteUrl: json['website_url'],
      state: json['state'],
      street: json['street'],
    );
  }
}
