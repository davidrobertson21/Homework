class Library

  attr_accessor :books

  def initialize(books_input)
    @books = books_input
  end




def display_books()
  return @books
end


def book_information(book_title)
  for book in @books
    if book_title == book[:title]
  return book
    end
  end
    return nil
end


def book_rental_information(book_title)
  for book in @books
    if book_title == book[:title]
  return book[:rental_details]
    end
  end
    return nil
end


end