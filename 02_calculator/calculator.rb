def add (number, number_2)
  number + number_2
end

def subtract (number, number_2)
  number - number_2
end

def sum array
  if array.empty?
    array = [0]
  end

  sum = 0
  array.each do |num|
    num += num
  end

  sum
end