=begin
=end

def isDivisibleByTwoThreeFive(num)
  true if (num % 2 == 0) or (num % 3 == 0) or (num % 5 == 0) 
end

def divisible
  result = []

=begin
  for n in (1..100) do
    result.push(n) if isDivisibleByTwoThreeFive(n)
  end
=end
  
  # try to do with map instead of for-loop
  (1..100).map { |num| result.push(num) if isDivisibleByTwoThreeFive(num) }

  return result
end

#p divisible()

#p isDivisibleByTwoThreeFive(1)
#p isDivisibleByTwoThreeFive(10)
#p isDivisibleByTwoThreeFive(97)

print divisible()
