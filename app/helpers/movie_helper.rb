module MovieHelper

  def reject_keys(keys, rejected_keys)
    keys.reject { |k| rejected_keys.include? k.downcase.to_sym }
  end

  def include_keys(keys, included_keys)
    keys.reject { |k| !included_keys.include? k.downcase.to_sym }
  end
end
