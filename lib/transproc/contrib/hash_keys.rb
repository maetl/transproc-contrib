module Transproc
  SEPARATOR = ' '.freeze
 
  # Join keys together using a default separator token (single space)
  register(:join_keys) do |hash, mapping|
    Transproc(:join_keys!, mapping)[Hash[hash]]
  end
 
  register(:join_keys!) do |hash, mapping|
    mapping.each do |to, from|
      hash[to] = hash.select { |k,v| from.include?(k) }.values.join(SEPARATOR)
      from.each { |k| hash.delete(k) }
    end
 
    hash
  end

  # Split keys based on a default separator token
  register(:split_keys) do |hash, mapping|
    Transproc(:split_keys!, mapping)[Hash[hash]]
  end
 
  register(:split_keys!) do |hash, mapping|
    mapping.each do |to, from|
      hash[from].split(SEPARATOR).each_with_index do |value, index|
        hash[to[index]] = value
      end
      hash.delete(from)
    end
 
    hash
  end
end
