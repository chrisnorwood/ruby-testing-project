def reverser &block
  array = yield.split.map do |word|
    word.reverse
  end
  array.join(' ')
end

def adder(n=1, &block)
  yield + n
end

def repeater(n=1, &block)
  n.times do
    yield
  end
end