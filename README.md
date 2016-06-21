# Methodify Hash

This is a small module (really only two lines of code) which enables hashes to use methods instead of the standard bracket operator ``[]``.

### Examples

Only one hash:

    hash = Hash.new
    hash[:bye] = 'see ya'
    hash.extend(MethodifyHash)
    puts hash.bye
    
All hashes beginning from this point:

    class Hash
      include MethodifyHash
    end

    hash = { this: 'hello' }
    puts hash.this

Nested hashes:

    nested_hash = { this: { really: { works: 'bye' }, great: 'see' } }
    puts nested_hash.this.really.works

String hashes:

    string_hash = { 'hello' => 'bye' }
    puts string_hash.hello
