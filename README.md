# xkcd-sfw-generator

This is a little phrase generator suitable for generating temporary passwords.  You probably don't want the nuclear launch button protected by these passwords.

## Installation

`gem install xkcd-sfw-generator`

or via Gemfile

`gem xkcd-sfw-generator`

## Usage

To just get a single password:

`XkcdSfwGenerator.generate(2) # => horse chair`

To get an object suitable for creating multiple passwords (and not incur the cost of loading the dictionary each time: 

```ruby
generator = XkcdSfwGenerator.new
generator.generate(2)
```

Sometimes it's useful to keep getting the same password for testing purposes:

`XkcdSfwGenerator.generate(2,3) # 2nd argument is a seed value for a randomizer`

Or the instance approach:

```ruby
generator = XkcdSfwGenerator.new(3) # A seed, again
generator.generate(2)
```

## Tests

we even have those!  Using Rspec:

`rspec spec`

## Contributing

Adding to the word list would increase entropy, which is a nice feature.  We really do want to keep the words common enough so that remembering them isn't hard.

With that in mind, fork and generate pull requests to your heart's content.

If you change the interface or something, be sure to include tests.

## Special thanks

To other, similar libraries such as:

* KevenLiddle's [battery-staple](https://github.com/KevinLiddle/battery-staple)
* Govan's [XKCD-password-generator](https://github.com/Govan/XKCD-password-generator)

And for the SFW word list, and extra special thanks to Jeff Preshing for [this post](http://preshing.com/20110811/xkcd-password-generator/).

## License

The MIT License (MIT)

Copyright (c) 2013 Big-Oh Studios, Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
