class Request {
  final String id;
  final String city;
  final String subcity;
  final String street;
  final String bedRoomNumber;
  String description;

  Request({
    required this.id,
    required this.city,
    required this.subcity,
    required this.street,
    required this.bedRoomNumber,
    required this.description,
  });
}

List<Request> userRequests = [
  Request(
      id: "1",
      city: "Addis Ababa",
      subcity: "Kolfe",
      street: "Street 203",
      bedRoomNumber: "3",
      description:
          "I am looking for the house if there is any one with house to rent from location where I have specified please post your house details."),
  Request(
      id: "1",
      city: "Addis Ababa",
      subcity: "Bole",
      street: "Ruwanda street",
      bedRoomNumber: "3",
      description:
          "I am looking for the house if there is any one with house to rent from location where I have specified please post your house details."),
  Request(
      id: "1",
      city: "Addis Ababa",
      subcity: "Arada",
      street: "street 20",
      bedRoomNumber: "3",
      description:
          "I am looking for the house if there is any one with house to rent from location where I have specified please post your house details."),
  Request(
      id: "1",
      city: "Addis Ababa",
      subcity: "Kirkos",
      street: "street 34",
      bedRoomNumber: "3",
      description:
          "I am looking for the house if there is any one with house to rent from location where I have specified please post your house details."),
  Request(
      id: "1",
      city: "Addis Ababa",
      subcity: "Lafto",
      street: "Street 93",
      bedRoomNumber: "3",
      description:
          "I am looking for the house if there is any one with house to rent from location where I have specified please post your house details."),
  Request(
      id: "1",
      city: "Addis Ababa",
      subcity: "Gulele",
      street: "Street 13",
      bedRoomNumber: "3",
      description:
          "I am looking for the house if there is any one with house to rent from location where I have specified please post your house details."),
];
