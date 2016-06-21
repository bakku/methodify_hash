#!/usr/bin/env ruby

require_relative 'methodify_hash'

# safer way
hash = Hash.new
hash[:bye] = 'see ya'
hash.extend(MethodifyHash)
puts hash.bye


# dangerous
class Hash
  include MethodifyHash
end

# works with normal hashes
normal_hash = { this: 'hello' }
puts normal_hash.this

# works with nested hashes
nested_hash = { this: { really: { works: 'bye' }, great: 'see' } }
puts nested_hash.this.really.works
