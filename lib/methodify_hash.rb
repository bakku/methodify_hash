require "methodify_hash/version"

module MethodifyHash
  def method_missing(method_id)
    attr_name = method_id.id2name
    self[attr_name] || self[attr_name.to_sym]
  end
end
