# Shoppy- An Ecommerce Application

This is a Rails Application built as an Ecommerce Store. You can add, buy and sell products along with sharing comments on the posts where other users can see them for the sake of reviews. The App also handles the payment using Stripe payment. You can search for products with their title/name. Users can create an account on the app for making payments and for adding or buying products.

## Operations

-User Accounts using Devise

User can have an avatar/image and a name for their account

Products - Users can add/edit/ remove and view products

Comments  - Users can add / view comments on products

Cart - Users can add products to their card and keep shopping for more products

Checkout - Users can checkout if they are signed in and make payment through Stripe Checkout.

Search: Anyone can view products and search from the navbar search to view the list of products against their search




## Project information:
* Ruby version ruby => '2.7.2'
#### System dependencies
* The application uses 'rails', '~> 5.2.6' as its version. The gems are used for specific tasks and functionality.

Following functionality is added with the dependent gems
* Devise - User Authentication
* Carrierwave - image handling
* Gravatar - for user avatar (if there is no user image)
* Commentator - A comment thread engine to handle comments on posts (requires Jquery)
* Stripe - for payment method integration
* Image processing - used for creating image variants by processing the image.
* Simple Form- For simpler forms used in application
* PG - Postgres Db gem

## Database creation
The application uses Postgres as the DB and you would need the PG Gem in your gemfile as well as the postgres installed on your local machine.
## Database initialization
Following commands are to setup and migrate db schema
```bash
rails db:setup
rails db:migrate
```

##  Configuring and running the application
The application would need a
```bash
bundle install
 ```
 command on your local machine to install all the gem dependencies on it. You may need to run :
```bash
yarn add jquery
```
for adding the jquery used in the application and for the commontator engine.
To run the application you would need to run
``` bash
rails s
```
 command for the local host server to start (using puma)

## Deployment instruction
	 **Will be deployed to Heroku
