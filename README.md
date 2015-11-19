##Scope
This project has been created for the purpose of setting up a demo on authentication in RoR using devise and omniauth.
In this application, omniauth-facebook gem has been used to allow login using facebook credentials. 

###To Install

### Make sure the local environment meets the following requirements

```text
Rails version 4.2.1
Ruby version 2.2.2
```
It is strongly recommended to have RVM installed. Currently, due to scope of this assignment, Sqlite is being used as the database.

### Clone repo

```bash
git clone git@github.com:mayuri-dua/AuthDemo.git
```

#### Install gems

# To create a gemset called MyDemo, use the following commands: 

```bash
rvm use ruby-2.2.2
rvm gemset create MyDemo
```
# Install bundler gem and then install bundle:

```bash
gem install bundler
bundle install
```
### Setup database

```bash
rake db:setup
rake db:seed
```

Admin user data has been seeded already. More users can be registered from the user interface.

# To run application on localhost

```bash
rails s
```

### Test Setup

App has guard setup to run rspec along with factory-girl. Currently, minor coverage has been given to models. 

# To run the tests, run following in a separate terminal using gemset MyDemo

```bash
bundle exec guard
```





