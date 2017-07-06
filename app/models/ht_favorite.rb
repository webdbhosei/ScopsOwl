class HtFavorite < ApplicationRecord
  belongs_to :user 
  belongs_to :ht_route, optional: true
end
