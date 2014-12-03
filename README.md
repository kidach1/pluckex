# Pluckex

Pluckex add pluck-extended methods.

[ActiveRecord::Caluculations#pluck](http://api.rubyonrails.org/classes/ActiveRecord/Calculations.html#method-i-pluck).

Like this.

### pluck_tied_by_id

#### one arg case:

```ruby
Person.pluck_tied_by_id(:name)
# => {1=>'David', 2=>'Jeremy', 3=>'Jose'}
```

#### multiple args case:

```ruby
Person.pluck_tied_by_id(:name, :age)
# => {1=>{:name=>"David", :age=>25}, 2=>{:name=>"Jeremy", :age=>27}}

```
### pluck_with_keys

```ruby
Person.pluck_with_keys(:id, :name)
# => [{:id=>1, :name=>'David'}, {:id=>2, :name=>'Jeremy'}, {:id=>3, :name=>'Jose'}]
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'pluckex'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pluckex

## Contributing

1. Fork it ( https://github.com/[my-github-username]/pluckex/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
