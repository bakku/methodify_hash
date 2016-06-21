require 'test_helper'

class MethodifyErrorTest < Minitest::Test

  def test_raise_exception_when_used_on_non_hash_using_extend
    test_obj = TestClass.new

    assert_raises MethodifyHash::NoHashError do
      test_obj.extend(MethodifyHash::Module)
    end
  end

  def test_raise_exception_when_used_on_non_hash_using_include
    assert_raises MethodifyHash::NoHashError do
      TestClass.try_include
    end
  end

  def test_raise_exception_when_used_on_non_hash_using_methodify
    test_obj = TestClass.new

    assert_raises MethodifyHash::NoHashError do
      MethodifyHash.methodify(test_obj)
    end
  end

end