def hangman(word, arr_letters_guess)
  
=begin
  arr_letters_guess.each do |elmt|
    puts elmt
  end
=end

  # example of using map
  #arr_letters_guess.map { |elmt| p "#{elmt}" }
  # this does the same as the above, the "&" and ":" are syntatic sugar to reduce repeated typing
  # calls the "p" method for each implicit "elmt"
  #arr_letters_guess.each(&method(:p))
  
  
  # any? doesn't work on strings, only works on arrays
  #word.any? { |letter| letter == "a" }

  # example of using any?
  # the syntax is similar to map
  #arr_letters_guess.any? { |letter| letter in arr_letters_guess }

  
  # 'in' doesn't work on strings. Strings aren't treated as arrays like in other languages
  # so can't do the code below
=begin
  for w in word do
    puts w
  end
=end
  
  # but you can convert string into an array using

  # convert string into an array spliting on each letter
  word = word.split("")

  # create a word the same length as original and sub with underscores
  result = "_" * word.length


  # don't use .each_char, a better method would be .each_with_index
  word.each_with_index { |w, idx|

    result[idx] = w if arr_letters_guess.include? w

  }
  return result

=begin
    # this is bad because you are doing n^2 comparisons "a" with "a", "a" with "b", etc...
    # you know the index, so just look it up?
    for l in arr_letters_guess do
      if l == w then
        p "concat w: #{w}, l: #{l}"
        result += w
        next
      else
        p "not a match"
        result += ""
        next
      end
    end
    result += "_"
=end



=begin
    # can't wrap my head around this logic, need to use for-loop
    arr_letters_guess.map { |l|
      p "w: #{w}, l: #{l}"
      return l == w
    }
=end


    #if w == "a"
      #return true
    #else
      #return false
    #end

  
  # note to myself
  # "do ... end" can be replaced with "{ ... }" 
  
end

hangman("bob",["b"])
#
# should return b_b

hangman("alphabet",["a","h"])
# should return a__ha___

hangman("aaaaaaaaaaabbbbbbbbbbbbbb",["a", "b"])
# should return aaaa...aaa


hangman("alphabet",["c","d"])

#"a" in ["b", "a", "c"]
# "in" doesn't do matching. need ot use it like: dummy_var in my_array
