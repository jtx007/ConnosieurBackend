
# Connosieur V2 API

This application was built with sneaker enthusiasts in mind. It's platform for individuals to find their favorite sneakers and show them off on their individual profiles. This is the backend repo, for the frontend repo click the link [here](https://github.com/jtx007/Connosieur)

## Getting Started

### Prerequistes

This api uses Ruby on Rails to serve a RESTful API to the frontend. I'm using Ruby version 2.6.4 and Rails version 5.2.4. I'm also using PostGres App for Mac as a database GUI so make sure that you have that and PostgresSQL installed on your machine as well.

### Development

In order to work with this API, all you need to do is the following:

```
git clone
bundle install 
bundle update
rake db:create
rake db:migrate
rake db:seed
rails s
```

The api will now be served on http://localhost:3000/. 

## Schema

Here is a visualization of the current database schema. This is subject to change as time goes on

![Database Schema](/app/assets/ConnosieurDB.png)

## Tech Stack
- Ruby v2.6.4
- Rails v5.2.4

For the deployed application, check it out [here](https://connosieurfrontend.herokuapp.com/)

For the frontend repo, check it out [here](https://github.com/jtx007/Connosieur)

If there are any critiques or concerns, feel free to contact me at jamesjacobthomas7@gmail.com

