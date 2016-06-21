# Methodify Hash

This is a small module which enables hashes to use methods instead of the standard bracket operator ``[]``.

### Usage

Only one hash (won't work for nested):

    hash = Hash.new
    hash[:bye] = 'see ya'
    hash.extend(MethodifyHash::Module)
    puts hash.bye

Using helper method for only one hash (works for nested):

    nested_hash = { this: { really: { works: 'bye' }, great: 'see' } }
    MethodifyHash.methodify(nested_hash)
    puts nested_hash.this.really.works

All hashes beginning from this point:

    class Hash
      include MethodifyHash
    end

    hash = { this: 'hello' }
    puts hash.this

Also hashes with strings being the keys works:

    string_hash = { 'hello' => 'bye' }
    puts string_hash.hello


### Current Issues

Tests have to be run separately to ensure everything is working correctly

### Licence

    The MIT License (MIT)

    Copyright (c) 2016 Christian Paling

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
