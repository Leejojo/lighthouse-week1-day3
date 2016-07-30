 @states = {
  OR: 'Oregon',
  FL: 'Florida',
  CA: 'California',
  NY: 'New York',
  MI: 'Michigan',
}

@states.store(:NJ,'New Jersey')
@states.store(:AL,'Alabama')


@cities = {
  OR: ['Portland', 'Eugene', 'Bend'],
  FL: ['Orlando', 'Tampa', 'Miami', 'Sarasota'],
  CA: ['Los Angeles', 'San Jose', 'San Diego', 'San Bernardino', 'San Francisco'],
  NY: ['New York City', 'Syracuse', 'Albany'],
  MI: ['Detroit', 'Ann Arbor']
}

@taxes = {
  OR: 1.6,
  FL: 2.7,
  CA: 3.8,
  NY: 4.9,
  MI: 5.0
}


def describe_state

  puts "Which State (abbreviation) are you interested in?"
  state = gets.chomp.upcase.to_sym
  state_str = @states[state]
  number_of_cities = @cities[state].length
  list_of_cities = @cities[state].join(', ')

  puts "#{state} is for #{state_str}. It has #{number_of_cities} major cities: #{list_of_cities}"
  
end

describe_state()



def calculate_tax
  puts "Which state?"
  state_tax = gets.chomp.upcase.to_sym
  puts "How much?"
  dollar_amount = gets.chomp.to_f.round(2)
  tax_rate = @taxes[state_tax] / 100
  total_tax_amount = dollar_amount*tax_rate
  total = total_tax_amount.round(2)
  puts "Your total tax amount is: $#{'%.02f' % total}"
end

calculate_tax


def find_state_for_city
  puts "Which City?"
  city_name = gets.chomp.capitalize
  city = @cities.select {|k,v| v.include?(city_name)}
  if true
    puts city.keys
  else
    puts "I don't know that city. Try another."
  end
end

find_state_for_city
