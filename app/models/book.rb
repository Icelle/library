class Book < ActiveRecord::Base
  validates :title, presence: true
  has_many :checkouts,
    inverse_of: :books
  has_many :categorizations
  has_many :categories,
    through: :categorizations,
    inverse_of: :books

  validates :rating, numericality: {less_than_or_equal_to: 100, greater_than_or_equal_to: 0}, allow_nil: true

  # accepts_nested_attributes_for :categorizations

  def self.seed(n)
    books = []
    n.times do
      books.push(FactoryGirl.create(:book))
    end
    books
  end
end
