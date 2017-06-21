class Rh21Post < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :rh21_threads
  belongs_to :rh21_posts
  belongs_to :rh21_languages
end
