require 'test_helper'

class MethodifyHashTest < Minitest::Test

  def test_standard_symbol_hash
    hash = { hello: 'bye' }
    hash.extend(MethodifyHash::Module)
    assert_equal 'bye', hash.hello
  end

  def test_standard_string_hash
    hash = { 'hello' => 'bye' }
    hash.extend(MethodifyHash::Module)
    assert_equal 'bye', hash.hello
  end

end
