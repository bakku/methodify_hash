require 'methodify_hash/version'
require 'methodify_hash/no_hash_error'
require 'methodify_hash/module'

module MethodifyHash

  def self.methodify(obj)
    if obj.class != Hash
      raise NoHashError, 'MethodifyHash was not used on a Hash'
    end

    obj.extend(MethodifyHash::Module)

    obj.each do |k,v|
      if v.class == Hash
        MethodifyHash.methodify(obj[k])
      end
    end
  end

end
