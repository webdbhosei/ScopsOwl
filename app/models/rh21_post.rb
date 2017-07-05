class Rh21Post < ApplicationRecord
  has_and_belongs_to_many :users
  has_and_belongs_to_many :rh21_threads
  # belongs_to :rh21_threads
  # belongs_to :rh21_languages
end
