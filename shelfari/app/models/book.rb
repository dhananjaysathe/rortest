class Book < ActiveRecord::Base
  attr_accessible :author, :book_name, :status
end
