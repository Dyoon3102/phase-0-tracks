our_array = []
p our_array
our_array << "item1" << "item2" << "item3" << "item4" << "item5"
p our_array
our_array.delete_at(2)
p our_array
our_array.insert(2, "item6")
p our_array
our_array.shift
p our_array
if our_array.include?("item4")
	puts "Our array does include item4."
else puts "Our array does not include item4."
end
other_array = ["item7", "item8", "item9"]
array_sum = our_array + other_array
p array_sum