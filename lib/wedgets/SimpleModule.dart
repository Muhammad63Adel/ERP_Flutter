class Module {
  String title;
  String level;
  double indicatorValue;
  int price;
  String content;

  Module(
      {this.title, this.level, this.indicatorValue, this.price, this.content});
}



List getModule() {
  return [
    Module(
        title: "Customer Relationship Management ",
        level: "1",
        indicatorValue: 1,
        price: 20,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Module(
        title: "Billing&Accounting",
        level: "2",
        indicatorValue: 1,
        price: 50,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
    Module(
        title: "Warehouse Mangement",
        level: "3",
        indicatorValue: 1,
        price: 30,
        content:
        "Start by taking a couple of minutes to read the info in this section. Launch your app and click on the Settings menu.  While on the settings page, click the Save button.  You should see a circular progress indicator display in the middle of the page and the user interface elements cannot be clicked due to the modal barrier that is constructed."),
     ];
}