# Ethical Switch API

Sinatra API for signups to http://ethicalswitch.org/

## Usage

Copy `.env.sample` to `.env` and configure required variables.

Get your environment up and running:

    script/bootstrap

Start the server:

    script/server

Create a new database:

    createdb -h localhost -p 5100 ethicalswitch

Create the database tables:
    
    ruby lib/ethicalswitch/database/create_tables.rb

Open the app:

    open http://localhost:5000/

## API Documentation

Get user count `GET`

    curl -i "http://localhost:5000/users/count"

Add user `POST`

    curl -i -d '{"name":"Jane Doe","first_name":"Jane","last_name":"Doe","email":"jane.doe@email.com","birthday":"01011977","gender":"female","facebook_id":"fds923f8g","facebook_token":"usd98f873ry7832fds87"}'  -X POST http://localhost:5000/users/

User schema

```
{
  "name": "Jane Doe",
  "first_name": "Jane",
  "last_name": "Doe",
  "email": "jane.doe@example.com",
  "birthday": "01011977",
  "facebook_id": "fds923f8g",
  "facebook_token": "usd98f873ry7832fds87",
  "gender": "female"
}
```

## Contributing

1. Fork it ( https://github.com/rhok-melbourne/ethicalswitch-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
