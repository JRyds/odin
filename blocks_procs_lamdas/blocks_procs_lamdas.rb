# frozen_string_literal: true

### YIELD Practice
## Basic Exercises
puts '1 - Create a method that uses yield to print "Hello, world!"'

def printer
  yield
end

printer { puts "Hello, world!" }

puts "---------------"

puts '2 - Modify the previous method to print the string "Hello" twice."'

def printer
  yield
  yield
end

printer { puts "Hello" }

puts "---------------"

puts '3 - Create a method that takes a number as an argument and yields it squared.'

def squared (num)
  yield(num * num)

end

squared (5) { |result| puts result }

puts "---------------"

puts '4 - Create a method that yields with a predefined argument, like "Ruby".'

def pre_def
  yield("Ruby")

end

pre_def { |result| puts result }

puts "---------------"


## Intermediate Exercises


puts "5 - Write a method that yields each element from an array."

numbers = [1, 2, 5, 4, 6, 10]

def array_eles(numbers)
  numbers.each do |number|
    yield number
  end

end

array_eles (numbers) { |result| puts result }

puts "---------------"

puts '6 - Modify the above method to only yield even numbers.'

numbers = [1, 2, 5, 4, 6, 10]

def array_evens(numbers)
  numbers.each do |number|
    if number.even?
      yield number
    end
  end

end

array_evens (numbers) { |result| puts result }

puts "---------------"

puts '7 - Create a method that yields two predefined strings: "hello" and "world".'

hello = "hello"
world = "world"

def pre_def_str (a, b)
  yield("#{a} #{b}")

end

pre_def_str(hello, world) { |result| puts result }

puts "---------------"

puts '8 - Make a method that expects a block to yield a number, then returns the doubled value.'
# You decide on a number in the block when you call the method.
# The block will yield this number to the method, which will then double it and return it.
# So, you control the number by specifying it in the block.

def expect_number
  puts yield + yield

end

expect_number { 5 }

puts "---------------"

puts '9 - Write a method that takes an argument and uses yield to add 10 to it.'

def add_ten(num)
  yield(num + 10)

end

add_ten(5) { |result| puts result }

puts "---------------"

puts '10 - Write a method that uses yield to manipulate and print hash keys and values.'

example_hash = { name: "Alice", age: 25, job: "Engineer" }
def hash_manip(hash)
  hash.each do |key, value|
    yield(key, value)
  end

end

hash_manip(example_hash) { |key, value| puts "#{key} - #{value}" }

puts "---------------"


## Advanced Exercises

puts '11 - Create a method that prints an array of squares of numbers 1 to 5.'

init_array = [1, 2, 3, 4, 5]

def array_square (arr)
  arr.each do |num|
    yield(num * num)
  end
end

array_square(init_array) { |result| puts result }

puts "---------------"

puts '12 - Create a method with an `if block_given?` check. Test with and without a block.'

def is_block
  if block_given?
    puts "Block was referenced"
  else
    puts "No block was referenced."
  end
end

is_block
is_block {}

puts "---------------"

puts '13 - Write a method that accepts an array and a block, sorts the array, and then yields each element.'

unsorted_array = unsorted_array = [9, 3, 6, 1, 8, 2, 5, 7, 4]

def arr_sort(arr)
  arr.sort.each do |element|
    yield(element)
  end

end

arr_sort(unsorted_array) { |result| puts result }

puts "---------------"

puts '14 - Create a method that simulates basic logging. It should yield a timestamp.'

log_messages = [
  "Error: Connection timed out",
  "Warning: Disk space running low",
  "Info: User logged in",
  "Error: Invalid input detected",
  "Info: Database backup complete"
]

def log_time(arr)
  arr.each do |msg|
    yield "AT #{Time.now.strftime("[%Y-%m-%d %H:%M:%S]")} - #{msg}"
  end
end

log_time(log_messages) { |result| puts result }

puts "---------------"

puts '15 - Implement a method that yields each vowel in a given string.'

words_array = ["apple", "banana", "carrot", "dog", "elephant", "frog", "grape", "house", "igloo", "jacket"]


def vowel_strip(arr)
  arr.each do |word|
    yield(word)
  end

end

vowel_strip(words_array) { |word| puts "#{word} becomes - #{word.delete("aeiouAEIOU")}" }

puts "---------------"

## Real-world-like Exercises

puts '16 - Create a method to format an array of numbers into currency strings (e.g., $10.00).'

numbers_array = [10, 25.5, 1000, 5.75, 42.9, 7.3, 123.456]

def currency_format(arr)
  arr.each do |num|
    yield(num)
  end

end

currency_format(numbers_array) { |num| puts "$#{'%.2f' % num}" }

puts "---------------"

puts '17 - Write a method that takes a string and yields each word capitalized.'

words_array = ["apple", "banana", "carrot", "dog", "elephant", "frog", "grape", "house", "igloo", "jacket"]

def capital_words(arr)
  arr.each do |word|
    yield(word.capitalize)
  end

end

capital_words(words_array) { |result| puts result }

puts "---------------"

puts '18 - Implement a method that accepts an array of transactions and yields each positive transaction.'

transactions_array = [10, -15, 25, 30, -24, -70, 999, -5, 42, -8]
positive_transactions = []

def transactions_sort(arr)
  arr.each do |item|
    if item > 0
      yield(item)
    end
  end
end

transactions_sort(transactions_array) { |result| positive_transactions << result }
p positive_transactions

puts "---------------"

puts '19 - Create a method to generate a list of emails with a specific domain, yielding each email.'

email_list = [
  "john@example.com",
  "alice@gmail.com",
  "bob@yahoo.com",
  "emma@example.com",
  "david@hotmail.com",
  "susan@example.com",
  "michael@gmail.com",
  "lisa@yahoo.com",
  "peter@example.com",
  "olivia@hotmail.com"
]

def emails_with_domain(emails, domain)
  pattern = /@#{Regexp.escape(domain)}$/

  emails.each do |email|
    yield(email) if email.match(pattern)
  end
end

emails_with_domain(email_list, "example.com") { |email| puts email }

puts "---------------"

puts '20 - Write a method to calculate the factorial of a given number using yield.'

numbers_array = [7, 22, 15, 9, 42, 3, 18, 5, 12, 30]

def calculate_factorial(num)
  factorial = 1

  (1..num).each do |i|
    factorial *= i
  end

  yield(factorial)
end

numbers_array.each do |num|
  calculate_factorial(num) { |result| puts "Factorial of #{num}: #{result}" }
end



puts "---------------"