print "Enter a word : "
user_input = gets.to_s.delete!("\n")

if user_input == user_input.reverse
  puts "O"
else
  puts "X"
end
