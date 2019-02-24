drugs = {
  'marijuanna' => '212',
  'cocaine' => '323',
  'smack' => '434'
}

def get_drugs_names(hash)
  hash.keys
end

def get_drugs_cost(hash, key)
  hash[key]
end

loop do
  puts "Do you want to lookup throught some drugs to find which fits you?"
  answer = gets.chomp.downcase
  break if answer != 'y'
  puts "Which drug you want to taste?"
  puts get_drugs_names(drugs)
  puts 'Type your choise'
  prompt = gets.chomp
  if drugs.include?(prompt)
    puts "The price for #{prompt} is #{get_drugs_cost(drugs, prompt)}$ "
    break
  else
    puts "You entered a city name not in the dictionary"
  end
end