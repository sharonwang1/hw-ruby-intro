# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr_sum = 0
  arr.each{|i|arr_sum+=i}
  return arr_sum
  
end


def max_2_sum arr
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    arr = arr.sort
    return arr[-1] + arr[-2]
  end
end


def sum_to_n? arr, n
  for i in 0..arr.length - 1
	  for j in (i+1)..arr.length - 1
	    sum = arr[i] + arr[j]
	    if sum == n
		    return true
	    end
	  end
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, " + name
end

def starts_with_consonant? s
  /^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? s
  s == "0" || /^[10]*00$/.match(s) != nil
end


# Part 3

class BookInStock
  
def initialize(isbn, price)
	if (isbn.length < 1) 
	  raise ArgumentError.new("ISBN Cannot be an empty string!")
	end
	
	if (price <= 0.0)
	  raise ArgumentError.new("Price needs to be more than 0.0!")
	end
	
	@isbn = isbn
	@price = price
  end
  
  #getter and setter
  attr_reader :isbn, :price
  attr_writer :isbn, :price

  def price_as_string
    sprintf("$%2.2f", @price)
  end
end
