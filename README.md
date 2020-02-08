# README
---
Ruby on Rails application to produce a web page that
shows the content of a CSV file containing a list of books.
Files are uploaded on Amazon S3.
---
# DEMO
https://book-explorer-rails.herokuapp.com/
---
## To start the application:

* Set up your environment:
`bundle install`

* Set up AWS cloud storage service:

Create a file '.env', copy the content of the file '.env.dist' and add your own AWS credentials.

* Set up PostgreSQL:
Install PostgreSQL if you don't have it on your local machine.
The application works only with no password set and 'postgres' default user

* Set up your database:
`rails db: create`
`rails db: migrate`

* Open the application locally:
`rails server`
