class Categorization < ActiveRecord::Base
  belongs_to :book,
    inverse_of: :categorizations

  belongs_to :category,
    inverse_of: :categorizations
end
