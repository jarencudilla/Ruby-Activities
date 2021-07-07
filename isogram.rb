def is_isogram(string)
  string.downcase!
  ('a'..'z').each do |letters|
    return false if string.count(letters) > 1
  end
  true
end
