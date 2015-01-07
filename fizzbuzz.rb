# fizzbuzz
# divisible by 15 then print fizzbuzz
# divisible by 3 then print fizz
# divisible by 5 then print buzz
# otherwise print the number
# standard one liner
# (1..100).each {|n| p n%15==0?"FizzBuzz" : n%5==0?"Buzz" : n%3==0?"Fizz" : n  }

#! /usr/bin/ruby
gem 'minitest'
require 'minitest/autorun'

def fizzbuzz(n)
  p n%15==0?"FizzBuzz" : n%5==0?"Buzz" : n%3==0?"Fizz" : n
end

describe "fizzbuzz_output" do
  it "should return the number" do
    fizzbuzz(89).must_equal 89
  end
  it "should return FizzBuzz if divisible by both 3 and 5" do
    fizzbuzz(15).must_equal "FizzBuzz"
  end
  it "should return Buzz if divisible by 5" do
     fizzbuzz(10).must_equal "Buzz"
   end
  it "should return Fizz if divisible by 3" do
     fizzbuzz(9).must_equal "Fizz"
   end
 end

# running the standard FizzBuzz with tested code
(1..100).each {|n| fizzbuzz(n) }