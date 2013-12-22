require 'spec_helper'

describe Categorization do
  it { should belong_to :book }
  it { should belong_to :category }

  it 'joins books and categories' do
    #we want to get the first book because book.seed returns an array
    book = Book.seed(1).first
    categories = Category.seed(10)
    #relationship- using the has_many through relationship assigning the categories to the book
    book.categories = categories
    #expect to to save book successfully
    expect(book.save!).to eql(true)
    updated_book = Book.find(book.id)
    # ensure that the categories we attached to book are in fact saved with the book
    expect(updated_book.categories.to_a).to eql(categories)
  end
end
