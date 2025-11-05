void main(){
  Map cityCountry1 = {
    "Nepal" : "Kathmandu",
    "India" : "New Delhi",
    "USA" : "Washington",
    "UK" : "London",
  
  };
  // String searchKey = "UK" ; 
  String searchKey = "USA" ; 
  print("$searchKey is in ${cityCountry1[searchKey]}");
 
  print(cityCountry1);
}