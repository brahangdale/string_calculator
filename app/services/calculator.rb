class Calculator
  def add(numbers)
    return 0 if numbers.empty? #returns 0 for an empty string

    numbers = numbers.gsub("\n", ",")  # Replace new lines with commas

    numbers.split(',').map(&:to_i).sum  #sum of two numbers
  end
end