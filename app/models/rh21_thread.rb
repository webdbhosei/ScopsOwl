class Rh21Thread < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :rh21_posts, :dependent => :destroy
  validates_presence_of :title
  validates_presence_of :subject
  validates_presence_of :content
  validates_presence_of :language_id
  validates_presence_of :user_id
end
