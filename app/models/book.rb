class Book < ActiveRecord::Base
  validates :title, presence: true
  validates :staff_favorites
  validates :author, presence: true
  validates :rating
end
