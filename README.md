##Halloween themed Rails validations demo aka  
##:ghost::ghost::ghost: SPOOKY PETS :ghost::ghost::ghost:

###To get this app up and running, run these commands in console:

**Install all of the necessary gems listed in the Gemfile**
```
bundle install
```

**Create the test and development databases based on the configuration specified in config/database.yml**
```
rake db:create:all
```

**Add all of the tables and table attributes to the database defined in db/schema.rb.**
```
rake db:schema:load
```

###To run common commands in development:

**Run the app locally:**
```
rails s
```
The default host location is http://localhost:3000.

**Run migrations**
```
rake db:migrate
```

##Project Contributors:
* [@meltar](https://github.com/meltar)
