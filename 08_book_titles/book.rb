# Book Titles

class Book
  attr_accessor :title, :words

  def title=(book_title) # setter method, will always return book_title value
    @title = book_title
    words = @title.split(" ")
    words.each do |word|
      if (!is_article?(word) && !is_conjunction?(word) && !is_preposition?(word))
        word.capitalize!
      else
        word
      end
    end

    words[0].capitalize!
    @title = words.join(" ")
  end

  def is_article? (word)
    articles = ["the", "an", "a"]
    if articles.include? word
      return true
    else
      return false
    end
  end

  def is_conjunction? (word)
    conjunctions = ["and", "but", "or", "nor", "so"]
    if conjunctions.include?(word)
      return true
    else
      return false
    end
  end

  def is_preposition? (word)
    prepositions = ["of", "in", "to", "for", "with", "on", "at", "from", "by", "about", "as", "into", "like", "through", "after", "over", "between", "out", "against", "during", "without", "before", "under", "around", "among"]
    if prepositions.include?(word)
      return true
    else
      return false
    end
  end
end