/* I wanted to use most of the concepts that we've reviewed until now. 

The parts of the code are: 

Part 1.
Contact Class which defines:
- the 3 variables to use as a contact (name, email and phone)
- Getter and Setter for each of the variables (I wanted to validate if
the user is entering a valid input or not but I was not able to do it. 
I left the comment where the validation should execute for future reference.)

Part 2. 

ContactList Class which defines: 
- A list to store the user inputs
- A method to add a contact
- A method to display the contacts
- A method to delete a contact

Part 3. 

Execution of the program using a Loop and conditionals to display a menu
for the user to interact with the console. */

// The program starts here.
import 'dart:io';

// Part 1.
class Contact {
  Contact(this._name, this._email, this._phone);
  late String _name;
  late String _email;
  late String _phone;

  String get name => this._name;

  set setName(String name) {
    // Validate the input here.
    this._name = name;
  }

  String get email => _email;

  set setEmail(String email) {
    // Validate the input here.
    this._email = email;
  }

  String get phone => _phone;

  set setPhone(String phone) {
    // Validate the input here.
    this._phone = phone;
  }
}

// Part 2.
class ContactList {
  List<Contact> _contacts = [];

  void addContact(dynamic contact) {
    _contacts.add(contact);
  }

  void displayContacts() {
    if (_contacts.isEmpty) {
      print('No contacts found.');
    } else {
      for (var contact in _contacts) {
        print('Name: ${contact.name}');
        print('Email: ${contact.email}');
        print('Phone number: ${contact.phone}');
        print('');
      }
    }
  }

  void deleteContact(String name) {
    _contacts.removeWhere((contact) => contact.name == name);
  }
}

// Part 3.
void main() {
  var contactList = ContactList();

  while (true) {
    print('Enter an option:');
    print('1. Add contact');
    print('2. Display all contacts');
    print('3. Delete contact');
    print('4. Exit');

    var option = stdin.readLineSync() ?? '';

    if (option == '1') {
      print('Enter name:');
      var name = stdin.readLineSync() ?? '';

      print('Enter email:');
      var email = stdin.readLineSync() ?? '';

      print('Enter phone number:');
      var phone = stdin.readLineSync() ?? '';

      var contact = Contact(name, email, phone);
      contactList.addContact(contact);

      print('Contact added successfully.');
    } else if (option == '2') {
      contactList.displayContacts();
    } else if (option == '3') {
      print('Enter name of contact to delete:');
      var name = stdin.readLineSync() ?? '';

      contactList.deleteContact(name);

      print('Contact deleted successfully.');
    } else if (option == '4') {
      break;
    } else {
      print('Invalid option.');
    }

    print('');
  }
}
