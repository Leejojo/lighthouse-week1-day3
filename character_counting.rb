def count_letters
  puts "Tell me something"
  phrase = gets.chomp
  
  result = phrase.scan(/\w/)

  hash = Hash.new(0)

  result.inject(hash) {|key, value| 
    hash[value] += 1
  }
  p hash
  # puts phrase.scan(/\w/).inject(Hash.new(0)){|k, v| k[v] += 1; k}

end
count_letters


=begin
  phrase.scan   will scan each character in the phrase(aka string)
  (/\w/)        will look for any alphanumeric character
  .inject       returns the characters into a new hash  
=end

def find_indices
  puts "Tell me"
  input = gets.chomp
  result = input.scan(/\w/)
  hash = Hash.new
  result.each_with_index do |char, index|
    hash[char] = index
  end
  p hash
end 

find_indices