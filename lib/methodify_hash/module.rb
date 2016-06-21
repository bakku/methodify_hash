module MethodifyHash

  module Module

    def method_missing(method_id)
      attr_name = method_id.id2name
      self[attr_name] || self[attr_name.to_sym]
    end

    def self.extended(klass)
      if (klass == Hash) == false && (klass.class == Hash) == false
        raise NoHashError, 'MethodifyHash was not used on a Hash'
      end
    end

    def self.included(klass)
      if (klass == Hash) == false && (klass.class == Hash) == false
        raise NoHashError, 'MethodifyHash was not used on a Hash'
      end
    end

  end

end