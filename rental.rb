require './book'
require './person'

class Rental
  def initialize(book, person, date)
    @book = book
    @person = person
    @date = date
  end
  attr_accessor :date
  attr_reader :book, :person

  def person=(_person)
    @person.rental.push(self) unless @person.rental.include?(self)
  end

  def book=(_book)
    @book.rental.push(self) unless @book.rental.include?(self)
  end
end
