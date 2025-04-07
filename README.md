# kinopoisk_dev_api

Ruby wrapper for [Unofficial Kinopoisk Dev API](https://api.kinopoisk.dev/documentation).

[![Gem Version](https://badge.fury.io/rb/kinopoisk_dev_api.svg)](http://badge.fury.io/rb/kinopoisk_dev_api)
[![Build Status](https://github.com/prisioner/kinopoisk_dev_api/actions/workflows/main.yml/badge.svg)](https://github.com/prisioner/kinopoisk_dev_api/actions)

## Installation

Add following line to your Gemfile:

```ruby
gem 'kinopoisk_dev_api', '~> 1.4.0'
```

And then execute:

```shell
bundle
```

Or install it system-wide:

```shell
gem install kinopoisk_dev_api
```

## Usage

First things first, you need to [obtain an Api Key](https://api.kinopoisk.dev/documentation) for your client.
Then create your API Client like this:

```ruby
require 'kinopoisk_dev_api'

api_key = 'YOUR_KINOPOISK_DEV_API_KEY'

client = KinopoiskDevApi::Client.new(api_key)

shawshank_redemption = client.movie_by_id(id: 326)

# attributes accessible with snake_case and camelCase methods
shawshank_redemption.id               # => 326
shawshank_redemption.alternative_name # => "The Shawshank Redemption"
shawshank_redemption.alternativeName  # => "The Shawshank Redemption"

# attributes accessible only with camelCase hash keys
shawshank_redemption[:id]                # => 326
shawshank_redemption[:alternativeName]   # => "The Shawshank Redemption"
shawshank_redemption[:alternative_name]  # => nil

# #to_h also converts to hash with camelCase keys
shawshank_redemption.to_h # => {id: 326, alternativeName: "The Shawshank Redemption", ...}

# nested objects accessible
shawshank_redemption.persons.first.en_name # => "Tim Robbins"

# search queries
from_date = DateTime.parse('2019-10-01 00:00:00')
to_date = DateTime.parse('2023-01-31 23:00:00')

# keys could be in snake or camel cases, attribute name in values should be in camelCase
# TrueClass, FalseClass, Date, Time, DateTime, Range, Array, String types supported
query_params = {
  select_fields: %w[id name alternativeName],
  is_series: true,
  'rating.kp' => '7.5-10',
  'rating.imdb' => 8..10,
  'premiere.world' => from_date..to_date,
  'genres.name' => %w[+драма !мелодрама]
}

# will provoke request with following params:
# https://api.kinopoisk.dev/v1.4/movie?
#   genres.name=%2B%D0%B4%D1%80%D0%B0%D0%BC%D0%B0&genres.name=%21%D0%BC%D0%B5%D0%BB%D0%BE%D0%B4%D1%80%D0%B0%D0%BC%D0%B0
#   &isSeries=true
#   &premiere.world=01.10.2019-31.01.2023
#   &rating.imdb=8-10
#   &rating.kp=7.5-10
#   &selectFields=id&selectFields=name&selectFields=alternativeName
movies = client.movie(query_params)
```

Implemented all endpoints of API v1.4. 

Mapping client method names to endpoints available in [lib/kinopoisk_dev_api/endpoints.rb](lib/kinopoisk_dev_api/endpoints.rb)

## Proxy

You can set up your own proxy and use it to access Kinopoisk Dev API.
In this case you need to configure API URL:

```ruby
KinopoiskDevApi::Client.run(token, url: 'https://proxy.example.com') do |bot|
  # ...
end
```

## Connection adapters

We rely on [faraday](https://github.com/lostisland/faraday) under the hood.
You can use any of supported adapters (for example, `net/http/persistent`):

```ruby
require 'net/http/persistent'

KinopoiskDevApi.configure do |config|
  config.adapter = :net_http_persistent
end
```

## Contributing

1. Fork it.
2. Create your feature branch (`git checkout -b my-new-feature`).
3. Commit your changes (`git commit -am 'Add some feature'`).
4. Push to the branch (`git push origin my-new-feature`).
5. Create a new Pull Request.
