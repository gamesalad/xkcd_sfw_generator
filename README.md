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
generator = XkcdSfwGenerator::Generator.new
generator.generate(2)
```

Sometimes it's useful to keep getting the same password for testing purposes:

`XkcdSfwGenerator.generate(2,3) # 2nd argument is a seed value for a randomizer`

For the instance approach you give it an instance of Random (or any class with the same interface):

```ruby
randomizer = Random.new(3)
generator = XkcdSfwGenerator::Generator.new(randomizer)
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

## Special, special thanks

For the SFW word list, a special, special thanks to Jeff Preshing for [this post](http://preshing.com/20110811/xkcd-password-generator/).

## Extra special, special thanks

For [the comic that inspired it all](http://xkcd.com/936/), thank you to xkcd. 

## License

Ruby code released under:

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

## Word list license

Copyright (c) 2011, Jeff Preshing
http://preshing.com/20110811/xkcd-password-generator
All rights reserved.

Some parts based on http://www.mytsoftware.com/dailyproject/PassGen/entropy.js, copyright 2003 David Finch.

Released under the Modified BSD License:

Redistribution and use in source and binary forms, with or without
modification, are permitted provided that the following conditions are met:
* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
* Neither the name of the <organization> nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
