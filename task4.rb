hash = {}

('a'..'z').each_with_index do |letter, index|
  hash[letter] = index if letter =~ /[aeiou]/
end

print hash