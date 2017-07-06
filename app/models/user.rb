class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :smpl_chats
  has_many :gr_fileserver_contents
  has_many :rh21_posts
  has_many :rh21_threads
  has_many :ht_favorites
end
