Standalone autotest extracted from ZenTest.

As soon as you save a file, autotest will run the matching tests.

Improvements over ZenTest
=========================
 - `-c` not run all tests after a failed test passes
 - `-r` use given config file
 - `-p` use parallel_tests to run tests (Test::Unit only)
 - `-s` use any style you want -> `alias autospec2="autotest --style rspec2"`
 - `-b` use bundle exec to run tests
 - `-n` notify about results (simple + experimental)
 - simplified test setup
 - simplified packaging
 - less globals
 - integration tests

Install
=======
    sudo gem uninstall ZenTest
    sudo gem install autotest-standalone

Optional: [Autotest for Test::Unit on Rails](https://github.com/grosser/autotest-rails)
    sudo gem install autotest-rails-pure
Optional: [ZenTest without Autotest](http://github.com/grosser/zentest) version:
    sudo gem install zentest-without-autotest


Usage
=====
 - go to project folder with tests
 - run `autotest`

### Options
    -f, --fast-start                 Do not run full tests at start
    -p, --parallel                   Run tests (Test::Unit only) in parallel -- gem install parallel_tests
    -c, --no-full-after-failed       Do not run full tests after failed test passed
    -v, --verbose                    Be verbose. Prints files that autotest doesn't know how to map to tests
    -q, --quiet                      Be quiet.
    -r, --rc CONFIG                  Path to config file. (Defaults to ~/.autotest or current_dir/.autotest)
    -s, --style STYLE                Which style to use, e.g. rspec, rspec2
    -b, --bundle-exec                Use bundle exec to run tests
    -n, --notify                     Notify about success and failure via popups
    -h, --help                       Show this.

Windows needs [diff.exe](http://gnuwin32.sourceforge.net/packages.html)

TIPS
====
 - [RSpec] if you want to use `require 'spec_helper'` -> `rspec --configure autotest`

TODO
====
 - add documentation for hooks
 - remove globals from unitdiff
 - add some automatic notifications e.g. autotest -n -> use any notify library found
 - use watchr


License
=======

### Autotest was extracted from ZenTest and improved by:
 - [brian p o'rourke](https://github.com/bpo)
 - [Charles Roper](http://twitter.com/charlesroper)
 - [Shane Liebling](http://github.com/shanel)
 - [Erik Fonselius](https://github.com/Fonsan)
 - [Michael Grosser](http://grosser.it)

### ZenTest Authors
 - http://www.zenspider.com/ZSS/Products/ZenTest/
 - http://rubyforge.org/projects/zentest/
 - ryand-ruby@zenspider.com


(The MIT License)

Copyright (c) 2001-2006 Ryan Davis, Eric Hodel, Zen Spider Software

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
