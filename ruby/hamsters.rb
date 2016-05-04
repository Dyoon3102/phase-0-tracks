def set_default_age(age)
  if age == "" then
    nil
  else 
    age.to_i
  end
end
  
def good_candidate?(candidate)
  if candidate == "Y"
    true
  else
    false
  end
end
  
def display_age(age)
  if age.nil? then
    puts "This hamster is one of the Ageless Hamsters -- a rare find!"
  else
    puts "This hamster is estimated to be #{age} months old."
  end
end

puts "What is the hamster's name?"
name = gets.chomp

puts "what level of volume do you prefer?" 
volume = gets.chomp.to_i

puts "Kind Hamster, tell us the color of your fine fur!"
fur = gets.chomp

puts "Is this hamster a good candidate for adoption (Y/N)?"
candidate = gets.upcase.chomp


puts "how old would you say this hamster in months?"
age = gets.chomp
age = set_default_age(age)
display_age(age)

puts "Hamster's name is #{name}"
puts "Hamster's volume level is #{volume}"
puts "Hamster's fine fur is colored: #{fur}"
if good_candidate?(candidate)
  puts "This hamster would make a fine friend to adopt"
else
  puts "this hamster is likely to bite you!"
end