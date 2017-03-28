require ('minitest/autorun')
require_relative('./library')

class TestLibrary < MiniTest::Test

  def setup
    @books =              [

                            {title: "Lord of the Rings",
                            rental_details: {
                                  name: "David",
                                  due_date: "11/09/2017"
                                            }},
                            {title: "1984",
                            rental_details: {
                                  name: "John",
                                  due_date: "12/03/2017"
                                            }},
                            {title: "Jane Eyre",
                            rental_details: {
                                  name: "Gary",
                                  due_date: "03/05/2017"
                                            }},
                            {title: "Harry Potter",
                            rental_details: {
                                  name: "Jim",
                                  due_date: "08/02/2017"
                                            }}                
                           ]

  @library = Library.new(@books)

  end



def test_display_books
  book_list = @library.books()
assert_equal(@books, book_list)
end

def book_information
  assert_equal(@library[0], @books.book_information("Lord of the Rings"))
end

# def book_rental_information
#   assert_equal()



end
