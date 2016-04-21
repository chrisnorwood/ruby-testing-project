def echo string
  string
end

def shout string
  string.upcase
end

def repeat string, times = 2
  [string] * times * ' '
end

def start_of_word string, position = -1
  string[0..(position-1)]
end

def first_word string
  string.split(' ')[0]
end

def titleize string
  exceptions = ['and', 
                'the', 
                'of', 
                'to', 
                'for', 
                'a', 
                'an', 
                'in', 
                'at', 
                'over']

  # probably not the most efficient way, by converting string to array first
  words = string.split
  words.each do |word|
    word.capitalize! unless exceptions.include?(word)
  end
  words[0].capitalize!
  words.join(' ')
end