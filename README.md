# Totsuzen [![Build Status](https://secure.travis-ci.org/conmame/totsuzen.png)](http://travis-ci.org/conmame/totsuzen)

Add Totsuzen Class to String Class.

## Installation
Require ruby version >= 2.1

    $ gem install totsuzen
    
or

    $ git clone git://github.com/conmame/totsuzen.git totsuzen
    $ cd totsuzen
    $ bundle install
    $ bundle exec rake install

## Usage
```ruby
 require 'totsuzen'
     
 puts "hoge".totsuzen
     
 fuga = "piyo"
 fuga.totsuzen!
 puts fuga
```

or

```sh
% totsuzen hoge
＿人人人人＿
＞ hoge ＜
￣^Y^Y^Y^Y^￣
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Thanks
- yuya-takeyama
- takano32

## LICENCE
* Copyright © 2012 con_mame. See LICENSE.txt for further details.
