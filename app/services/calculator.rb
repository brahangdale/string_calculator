class Calculator
  def add(numbers)
    return 0 if numbers.empty? #returns 0 for an empty string

    #custom delimeter
    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = delimiter[2..-1]
      numbers = numbers.gsub(delimiter, ",")
    end

    numbers = numbers.gsub("\n", ",")  # Replace new lines with commas


    numbers.split(',').map(&:to_i).sum  #sum of two numbers
  end
end