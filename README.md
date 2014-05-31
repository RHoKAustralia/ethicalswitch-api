# Ethicalswitch

Sinatra API for signups to ethicalswitch.org

## Usage

Copy `.env.sample` to `.env` and configure required variables.

Get your environment up and running:

    script/bootstrap

Start the server:

    script/server

Create a new database:

    createdb -h localhost -p 5100 ethicalswitch

Open the app:

    open http://localhost:5000/

## Contributing

1. Fork it ( https://github.com/rhok-melbourne/ethicalswitch-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
