class Rh21Thread < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :rh21_posts
end
