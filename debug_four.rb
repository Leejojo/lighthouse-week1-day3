def char_count (list)
  new_list = list.join(",")
  result = new_list.split('')

  hash = Hash.new(0)

  result.each.inject(hash) {|key, value| 
    hash[value] += 1
  }
  p hash
  

end

# Why the long face(error)? 
# 1. This should return count of each letter in the list
# ex: { "a" => 4, "p" => 3, "l" => 1  ...}

puts char_count(['apples', 'oranges', 'hipsters', 'are', 'same'])


# 2. What are the improvements you can do to above code?