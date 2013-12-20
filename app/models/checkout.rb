class Checkout < ActiveRecord::Base
  validates :check_out_date, presence: true
  validates :return_date, presence: true
  validates :borrower, presence: true

  belongs_to :book,
    inverse_of: :checkout
end
