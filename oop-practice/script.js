const readline = require('readline');


// Step-by-Step Approach
// 1. Basic Object Creation
// Project: Create a simple Person class.

// Objective: Understand basic class and object creation.
// Tasks:

// Define a Person class.
// Add a constructor that takes name and age as parameters and assigns them to instance properties.
// Add a method called greet that logs a greeting message using the instance properties.
// Hints:

// Use the class keyword to define the class.
// Use this to refer to the instance properties inside the constructor and methods.
// Example:

// class Person {
//     constructor(name, age) {
//         this.name = name;
//         this.age = age
//     }

//     greet() {
//         console.log(`Hello, my name is ${this.name}.`);
//     }

//     displayAge() {
//         console.log(`I am ${this.age}, years old`);

//     }
// }

// let steve = new Person("Steve", 46);

// console.log(steve.greet());
// console.log(steve.displayAge());


// 2. Expanding Object Methods
// Project: Create a BankAccount class.

// Objective: Practice adding methods and managing object state.
// Tasks:

// Define a BankAccount class.
// Add a constructor that initializes the balance property.
// Add methods deposit, withdraw, and checkBalance to manage the balance.
// Hints:

// Ensure deposit adds to the balance.
// Ensure withdraw subtracts from the balance if there are sufficient funds.
// checkBalance should log the current balance.
// Example:


// class BankAccount {
//     constructor(balance) {
//         this.balance = balance;
//     }

//     deposit(amount) {
//         this.balance += amount;
//         console.log(`Your balance is $${this.balance}.`)

//     }

//     withdraw(amount) {
//         if (this.balance - amount < 0) {
//             console.log(`You cannot have a negative balance!`);
//         } else {
//             this.balance -= amount;
//             console.log(`Your balance is $${this.balance}.`);
//         }
//     }

//     checkBalance() {
//         console.log(`Your balance is $${this.balance}.`)

//     }
// }

// Example usage:
// const account = new BankAccount(100);
// account.deposit(50); // Should log the new balance
// account.withdraw(30); // Should log the new balance
// account.checkBalance(); // Should log the current balance

// 3. Interacting Objects
// Project: Create a Library and Book class.

// Objective: Practice creating multiple classes and having them interact.
// Tasks:

// Define a Book class with title and author properties.
// Define a Library class that can hold an array of Book objects.
// Add methods to the Library class to add a book and list all books.
// Hints:

// In the Library class, initialize an empty array to hold books.
// The addBook method should add a Book instance to the array.
// The listBooks method should log each book's details.
// Example:

// javascript
// Copy code
class Book {
    constructor(title, author, serialNumber) {
        this.title = title;
        this.author = author;
        this.serialNumber = serialNumber;

    }

}

class Library {
    constructor() {
        this.books = {};
        this.serialCounter = 0;
    }

    addBook(title, author) {
        const serialNumber = this.serialCounter++;
        let newBook = new Book(title, author, serialNumber);
        this.books[serialNumber] = newBook;
        console.log(`${newBook.title} by ${newBook.author} has been added to the library with serial number ${serialNumber}.`);
    }

    removeBook() {
        console.log(`Here is the list of authors currently in the library:`);
        Object.values(this.books).forEach(book => {
            console.log(`${book.title} by ${book.author} (Serial Number: ${book.serialNumber})`);
        });

    }

    listBooks() {
        if (Object.keys(this.books).length === 0) {
            console.log("No books in the library:");
        } else {
            console.log("Books in the library:");
            Object.values(this.books).forEach(book => {
                console.log(`${book.title} by ${book.author} (Serial Number: ${book.serialNumber})`);
            });
        }
    }
}


// Example usage:
// const library = new Library(); h
// const book1 = new Book('To Kill a Mockingbird', 'Harper Lee');
// const book2 = new Book('1984', 'George Orwell');
// library.addBook(book1); // Should log a message that the book was added
// library.addBook(book2); // Should log a message that the book was added
// library.listBooks(); // Should list all books in the library
// Practice Steps
// Write the Class Skeleton: Start with just the class definitions and constructors.
// Implement Methods One by One: Add methods gradually, testing each one as you go.
// Test Frequently: After writing each method, create instances and call the methods
// to ensure they work correctly.
// Refine and Extend: Once the basics are working, add more functionality or improve the existing code.