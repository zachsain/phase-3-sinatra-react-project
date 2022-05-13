
## About The Project

RentalDB is an inventory mangement system designed for rental shop owners. It makes it easy for owners to add new product categories, create new items within a category, and update and manage their products. 

RentalDB can also be used as a showroom to potential renters, allowing users to a favorite a particular item they are interested in. 


Features of RentalDB:
* Create and manage a digitial inventory system for your products and their categories. 
* Digitize your rental catelog. 
* Build and manage your own database of categories and items. 

### Built With

* [React.js](https://reactjs.org/)
* [Ruby](https://www.ruby-lang.org/en/)
* [Sinatra](http://sinatrarb.com/)
* [SQLite3](https://www.sqlite.org/index.html)

## Getting Started

To get a local copy up and running follow these steps.

### Prerequisites

* npm
  ```sh
  npm install npm@latest -g
  ```
* ruby
  You might already have ruby installed, run this to check 
  ```sh
  ruby -v
  ```
### Installation

Create a new directory on your machine and run the following commands in your terminal. 

1. Clone the front-end repo in your root directory
   ```sh
   git clone https://github.com/zachsain/my-app-frontend

2. Clone the back-end repo in your root directory 
   ```sh
   git clone https://github.com/zachsain/phase-3-sinatra-react-project
   ```

3. Install NPM packages in the frontend directory
   ```sh
   npm install
   ```

4. Install Gemfile packages in the backend directory
   ```sh
   bundle install
   ```

5. Start the rake server in the backend directory
   ```sh
   rake server
   ```

6. Start the App in the frontend directory
   ```sh
   npm start
   ```



## How It Works

### Home Tab
The home tab is just a simple welcome message for owners and their customers instructing them to click on the categories tab browse / manage the inventory.


### Categories Tab
The categories tab displays a list / links to all categories created by the rental owner. The owner can also create a new category by filling out the category form at the top of the page. By filling out the form this notifies the backend to create a new category. 

### The Category Click
Upon clickig on a particular category the user will be directed to a new page containing a list of all of the items within that category. The user can add a new item, update an existing item, or delete an item if it is out of inventory.

### Backend Setup

There are two primary tables within rentalDB database. The first is a category table which contains and name and an image. The category has many items, items being our second table. The items table has a name, image, price, and a category id (as to it belongs to a specific category).
