class Category < ActiveRecord::Base
  validates :name, presence:true, uniqueness: true

  has_many :categorizations
  has_many :books,
    through: :categorizations,
    inverse_of: :categories

  def self.seed(n)
    categories = []
    n.times do
      categories.push(FactoryGirl.create(:category))
    end
    categories
  end
end
