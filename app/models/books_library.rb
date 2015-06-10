class BooksLibrary < ActiveRecord::Base
  belongs_to :book
  has_many :book_libraries
end

