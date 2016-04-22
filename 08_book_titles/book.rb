class Book
  attr_accessor :title

  def title
    exceptions        = %w{a an the and but in of}
    
    @title = @title.split

    @title.map! do |word|
      unless exceptions.include?(word)
        word.capitalize 
      else
        word
      end
    end

    # capitalize first word in title
    @title[0].capitalize!

    @title.join(' ')
  end
end