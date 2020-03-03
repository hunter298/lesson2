hash = {}

('a'..'z').each.with_index(1) do |letter, index|
  hash[letter] = index if letter =~ /[aeiou]/
end

print hash