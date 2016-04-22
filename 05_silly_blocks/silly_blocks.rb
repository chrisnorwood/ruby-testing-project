def reverser
  array = yield.split.map do |word|
    word.reverse
  end
  array.join(' ')
end

def adder(n=1)
  yield + n
end

def repeater(n=1)
  n.times do
    yield
  end
end