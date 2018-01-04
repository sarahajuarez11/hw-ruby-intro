# When done, submit this entire file to the autograder.

# Part 1

# sums up the elements of an array
def sum arr
  arr.sum
end

# sums up the two largest elements of an array
def max_2_sum arr
  arr.max(2).sum
end

# checks to see if any two elements in an array
# sum up to n
def sum_to_n? arr, n
  arr.each do |x|
    arr2 = arr - [x]
    arr2.each do |y|
      if y + x == n
        return true
      end
    end
  end
  return false
end

# Part 2

# concatenates "Hello, " with name
def hello(name)
  "Hello, " + name
end

# checks to see if first character of string is consonant
# "i" - ignores case (upper/lower)
def starts_with_consonant? s
    /[bcdfghjklmnpqrstvwxyz]/i.match(s[0])
end

# ^[01]* - start of the line match a 0 or a 1 zero or more times
# 00$    - match 00 at end of the line (multiples or 4 will end in 00)
def binary_multiple_of_4? s
  if s == "0" || /^[01]*00$/.match(s)
    return true
  else 
    return false
  end
end

# Part 3

class BookInStock
  # getter/setters for isbn & price
  attr_accessor :isbn, :price 
  
  # constructor
  def initialize isbn, price
    if isbn.empty? || price <= 0
      raise ArgumentError
    end
    @isbn = isbn
    @price = price
  end
  
  # returns price of book formatted, ex: $20.00
  def price_as_string
    "$" + format("%.2f", @price)
  end
end
