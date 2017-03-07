#OmniAuth 1.2 HeadHunter (OAuth 2) strategy

This gem is designed to work with OmniAuth 1.2 library against hh.ru

## How to include in your Gemfile

```
gem 'omniauth-headhunter'

```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-headhunter

## Basic Usage

    use OmniAuth::Builder do
      provider :headhunter, ENV['HEADHUNTER_KEY'], ENV['HEADHUNTER_SECRET']
    end
    
##Author

Metastasis <metastasis@protonmail.ch>

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request