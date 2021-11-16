=begin
(3) Write a program that collects 5 keys and 5 values from the user, and stores them in a hash.  Write a function that accepts the hash as optional parameters and prints out an array of keys and an array of values.  Call the function within your program so you know it works. (Question: Can you find online information on Ruby hash methods that will help with this function?)  Call this program hash_to_array.rb.
=end

def hash_to_array()

end

def get_user_input()
  user_input_hash = {}

  (1..5).each{ 
    puts "Enter a key: "
    my_key = gets.chomp 

    puts "Enter a value: "
    my_value = gets.chomp

    user_input_hash[my_key] = my_value
  }

end

get_user_input()
