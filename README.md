# DateDiff

Gem which calculates how many years, months and days are there between two dates

[![Build Status](https://travis-ci.org/nithinstany/date_diff.png?branch=master)](https://travis-ci.org/nithinstany/date_diff)

## Installation

Add this line to your application's Gemfile:

    gem 'date_diff'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install date_diff

## Usage

    require 'date_diff'
    components = Date.diff(start_date, end_date)
  
  This will return the hash of date difference in terms of years, months, days.

  You can use the difference like:
  
    components[:year], components[:month], components[:day], components[:difference]
  
## Examples
    > Date.diff(Date.parse('2000-01-01'), Date.parse('2013-06-19'))
    => {:year => 13, :month => 5, :day => 18, :difference => "13 years 5 months 18 days"}
  
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
