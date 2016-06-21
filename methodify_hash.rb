module MethodifyHash

  def method_missing(methID)
    attr_name = methID.id2name
    self[attr_name] || self[attr_name.to_sym]
  end

end
