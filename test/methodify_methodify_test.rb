require 'test_helper'

class MethodifyMethodifyTest < Minitest::Test

  def test_standard_symbol_hash_using_methodify
    hash = { hello: 'bye' }
    MethodifyHash.methodify(hash)
    assert_equal 'bye', hash.hello
  end

  def test_standard_string_hash_using_methodify
    hash = { 'hello' => 'bye' }
    MethodifyHash.methodify(hash)
    assert_equal 'bye', hash.hello
  end

  def test_nested_symbol_hash_using_methodify
    hash = { hello: { how: { are: 'you' } } }
    MethodifyHash.methodify(hash)
    assert_equal 'you', hash.hello.how.are
  end

end
