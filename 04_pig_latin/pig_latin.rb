def translate string
  vowels = %w{a e i o u}
  phrase = string.split(' ')

  # iterate through each word in the phrase
  phrase.map! do |word|
    # make array of each letter in the word
    letters = word.chars
    
    # find index of vowel in the word
    vowel_count = letters.index do |char|
      vowels.include?(char)
    end

    # moves 'QU' combo to the end of word
    if letters[vowel_count] == 'u'
      vowel_count += 1
    end

    letters.rotate!(vowel_count)
    letters.push('ay')
    letters.join
  end
  
  return phrase.join(' ')
end

__END__
phrase.map! do |word|
    if vowels.include?(word[0])
      word = word + 'ay'
    elsif word[0..1].include?("q")
      # find location of q then add one to include 'u'
      qu = word.index("q") + 1
      word = word[(qu+1)..-1] + word[0..qu] + 'ay'
    else
      # Iterate through characters of word until vowel found
      vowel = false
      until vowel
        word.chars.map.with_index do |char, i|        
            if vowels.include?(char)
              word = word[(i+1)..-1] + word[0..i] + 'ay'
              # stop iterating through characters
              vowel = true
            end
        end
      end
    end
  end