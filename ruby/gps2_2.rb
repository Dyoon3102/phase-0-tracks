# Release 1

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")

# steps: 

  # call our method create_list
  # our create_list method will take a string of items 
  # take string of items (our string, example: "carrots apples cereal pizza")) and split them into an array using whitespace as a delimiter.
  # create an empty hash 
  # iterate over our array and set the default quantity for each item to 1
  # add each item and quantity to our hash
  # print the list to the console, we can call our print list method below
# output: hash with items and quantities

def create_list(items)
  item_list = items.split(' ')
  grocery_list = {} 
  item_list.each do |item|
    grocery_list[item] = 1
  end
  grocery_list  
end

# Method to add an item to a list
# input: the list (hash), item name, and optional quantity
# steps: take new item (string), and add it to hash with a quantity 
# output: updated list with item added

def add_item(grocery_list, item, qty)
  grocery_list[item] = qty  
  grocery_list
end

# Method to remove an item from the list
# input: the list (hash), item to delete
# steps: delete the item from the list by calling the item specifically
# output: updated list with item removed

def remove_item(grocery_list, item)
  grocery_list.delete(item)
  grocery_list  # Now this is the last object evaluated
end

# Method to update the quantity of an item
# input: list, item, quantity
# steps: call the grocery list, choose the item that we want to update the quantity for, and take an integer as the new value for that item
# output: updated list with new quantity of item that has been updated

def update_qty(grocery_list, item, qty)
  grocery_list[item] = qty
  grocery_list
end

# Method to print a list and make it look pretty
# input: list
# steps: loop through each key and item in the list, print each item and it's quantity to the screen for the user to see. Add UI that says "Here is your grocery list: " 
# output: the list which will be hash with items as keys and quantities as values

def print_list(grocery_list)
  puts "Here is your grocery list: "
  grocery_list.each do |item, integer|
    puts "#{item.capitalize}, #{integer}"
  end
end

# Release 1 and 2
# Driver code
#list = create_list("carrots apples cereal pizza")
#add_item(list, "orange", 3) 
#remove_item(list, "carrots")
#update_qty(list, "cereal", 2)
#print_list(list)

# Release 3
# Driver code
list = create_list("apples lettuce juice milk")
add_item(list, "lemonade", 2)
add_item(list, "tomatoes", 3)
add_item(list, "onions", 1)
add_item(list, "ice cream", 4)
remove_item(list, "lemonade")
update_qty(list, "ice cream", 1)
print_list(list)

# Release 5
# What did you learn about pseudocode from working on this challenge?
# Learned that pseudocoding is helpful in outlining the method.
# What are the tradeoffs of using arrays and hashes for this challenge?
# Arrays are simpler to access but can not handle complex objects, as oppposed Hashes are more complex to use but easier to handle complex objects.
# What does a method return?
# A method returns the line last executed.
# What kind of things can you pass into methods as arguments?
# String, numbers, booleans, methods, data structures, and many more.
# How can you pass information between methods?
# By using the return value
# What concepts were solidified in this challenge, and what concepts are still confusing?
# Now I solidly understand the concept of hashes. Although many things became clear about pseudocoding through this challenge, I am still a little confused about how to properly pseudocode.