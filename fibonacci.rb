#! /usr/bin/ruby
gem 'minitest'
require 'minitest/autorun'

# memo-ized Fibonacci
# once you calculate a value store it
#
#  Standard Fibonacci is recursive - O(N^2)
#  Memoized Fibonacci much faster with lookup feature
#  Only calculate once for each n - O(N)

$known = {}

def fib_calc(n)
  if n < 0
    return nil
  elsif n < 2
    return 1
  elsif $known.include?(n)
    return $known[n]
  else
    fib_num = fib_calc(n-1) + fib_calc(n-2)
    $known[n] = fib_num
  end
end

describe "fibonacci_calc" do
  it "should return a fibonnaci number" do
    fib_calc(1).must_equal 1
    fib_calc(2).must_equal 2
    fib_calc(8).must_equal 34
  end
  it "should return nil if negative number" do
    fib_calc(-100).must_be_nil
  end
  it "should return 1 if n equals zero" do
    fib_calc(0).must_equal 1
  end
 end
