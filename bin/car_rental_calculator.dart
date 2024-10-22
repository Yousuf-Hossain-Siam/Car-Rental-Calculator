
void main() {
 Car car = Car("Toyota", "Camry", 2020, 4);
 print("Car Information");
 car.displayinfo();
 print("Rental Price for 5 days: \$${car.calculateRentaPrice(5)}");
}

class Vehicle{
  String brand;
  String model;
  int year;

  Vehicle(this.brand, this.model, this.year);

  void displayinfo(){
    print("Brand : $brand");
    print("Model : $model");
    print("Year: $year");
  }

  double calculateRentaPrice(int days){
      return days * 50;
  }
}

class Car extends Vehicle{
  int door;
  Car(
    String brand,
  String model,
  int year,
  this.door
) : super(brand, model, year);

@override
double calculateRentaPrice(int days){
      return super.calculateRentaPrice(days) +20* door ;
  }
}
