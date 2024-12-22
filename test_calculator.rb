require './config/environment' # Loads Rails environment
require './app/services/calculator' # Load the Calculator class

calculator = Calculator.new

puts calculator.add("")          # Output: 0
puts calculator.add("1,2,3")     # Output: 6
puts calculator.add("//;\n1;2")  # Output: 3
puts calculator.add("1\n2,3")    # Output: 6