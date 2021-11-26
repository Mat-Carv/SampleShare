# README

## Setting up Sample Share

This application was made with and requires:

- Ruby 3.0.0p0
- Rails 6.1.4.1
- Postgresql

Before running the application:

- Install Bundle
```
$ bundle install
```

- Change Directory into the root folder of the app and Install all Gems:
```
$ bundle
```

- Crate the Database:
```
$ service postgresql start
$ rails db:create
$ rails db:migrate
```

- And if you desire to, auto populate the DB:
```
$ rails db:seed
```

To Run the application on localhost:3000,

- Start up postgres if it isn't on already:
```
$ service postgresql start
```

- Start the rails server:
```
$ rails s
```
