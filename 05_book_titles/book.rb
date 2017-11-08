class Book
  attr_accessor :title
  EXCEPTION = %w(and in the of a an)
  def title= (book)
    @title = book.capitalize.split.map do |word|
      if EXCEPTION.include? word
        word
      else
        word.capitalize
      end
    end.join(" ")
  end
end
