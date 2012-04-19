# Raque

Loading Rails is shit, don&#39;t do it. Raque lets you run Rake tasks via Resque, saving you from loading Rails.

## Installation

Add this line to your application's Gemfile:

    gem 'raque'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install raque

## Usage

    raque REDIS_CONNECTION_STRING COMMAND [LOG_FILE]
    
    raque redis://127.0.0.1 db:migrate log/migrate.log

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
