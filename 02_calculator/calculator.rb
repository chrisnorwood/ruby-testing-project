def add number, number_2
  number + number_2
end

def subtract number, number_2
  number - number_2
end

def sum array
  array.inject(0, :+)
end

def multiply array
  array.inject(:*)
end

def power number, number_2
  number**number_2
end

def factorial number
  if number == 0
    1
  else
    number * factorial(number-1)
  end
end