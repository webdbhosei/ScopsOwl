class Rh21Thread < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :rh21_posts, :dependent => :destroy

  # def posts
  #     if Rh21Post.by_rh21_thread_id(self.id).any?
  #         return Location.by_rh21_thread_id(self.id).all
  #     else
  #         return nil
  #     end
  # end
end
