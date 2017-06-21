class HitmeController < ApplicationController

  def index
    @ht_routes = HtRoute.all
  end

  def traffic_list
    @ht_routes = HtRoute.all
  end

	
end
