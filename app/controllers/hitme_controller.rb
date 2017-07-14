class HitmeController < ApplicationController

  def index
    @ht_routes = HtRoute.all
    @ht_favorites =HtFavorite.where(user_id: current_user.id)
    @timetables = Timetable.all
    @chatrooms = Chatroom.all
  end

  def traffic_list
    @ht_routes = HtRoute.all
    @ht_favorites =HtFavorite.where(user_id: current_user.id)
    @chatrooms = Chatroom.all
  end


	
end
