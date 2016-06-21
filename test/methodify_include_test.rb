require 'test_helper'

class Hash
  include MethodifyHash::Module
end

class MethodifyIncludeTest < Minitest::Test

  def test_standard_symbol_hash
    hash = { hello: 'bye' }
    assert_equal 'bye', hash.hello
  end

  def test_standard_string_hash
    hash = { 'hello' => 'bye' }
    assert_equal 'bye', hash.hello
  end

  def test_nested_symbol_hash
    hash = { hello: { how: { are: 'you' } } }
    assert_equal 'you', hash.hello.how.are
  end

  def test_nested_string_hash
    hash = { 'hello' => { 'how' => { 'are' => 'you' } } }
    assert_equal 'you', hash.hello.how.are
  end

end