### [Makers Academy](http://www.makersacademy.com) - Week 10 Solo Tech Test Practice
Bank
-

[Test Outline](#Outline) | [Specification](#Specification) | [User Stories](#Story) | [Approach & Code Structure](#Approach) | [Installation Instructions](#Installation) | [Unit Testing](#Unit_Testing) | [Classes & Methods](#Methods) |


## <a name="Outline">Test Outline</a>

Today, you'll practice doing a tech test.

For most tech tests, you'll essentially have unlimited time.  This practice session is about producing the best code you can when there is a minimal time pressure.

You'll get to practice your OO design and TDD skills.

You'll work alone, and you'll also review your own code so you can practice reflecting on and improving your own work.

## <a name="Specification">Specification</a>

### Requirements

* You should be able to interact with your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012  
**And** a deposit of 2000 on 13-01-2012  
**And** a withdrawal of 500 on 14-01-2012  
**When** she prints her bank statement  
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

## <a name="Story">User Stories</a>

```
As a user, so I can manage my money, 
I'd like a bank account that keeps track of my balance.

As a user, so I can store my money, 
I'd like to be able to deposit money into my bank account.

As a user, so I can spend my money, 
I'd like to be able to withdraw my money. 

As a user, so I can see a summary of all my transactions,
I'd like to be able to print a bank statement. 

As a user, so I can get an overview of my spending, 
I'd like to see the date, amounts in/out and my balance for each transaction on my bank statement.
```

## <a name="Approach">Approach</a>

For this challenge, I felt the best way to approach my banking application was to look at the expected user input and application output.

Input:

* Given amounts to be deposited and withdrawn from the account.


Output:

* Transaction Data, including the date, transaction type, and remaining balance.
* A printed statement, showcasing all the processed transactions for the account, shown in reverse chromological order.

## <a name="Installation">Installation Instructions</a>

* To install, clone the repository to your local machine. Navigate to the folder it was cloned in and run `bundle install` to install RSpec (testing suite), Rubocop(Linter) and SimpleCov (test coverage).

* Then, in your terminal run `irb -r './lib/account.rb`
## <a name="Unit_Testng">Unit Testing</a>

## <a name="Methods">Classes & Methods</a>

### Account

### Transaction

### Statement
