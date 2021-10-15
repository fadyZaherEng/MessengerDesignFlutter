class ContactModel
{
 final int id;
 late final String Name;
 late final String Phone;

 ContactModel ({
   required this.id,
   required this.Name,
   required this.Phone
 });
 int getId(){
   return id;
 }
 String getName() {
   return Name;
 }
 String getPhone(){
   return Phone;
 }
}