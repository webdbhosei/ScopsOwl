class EbaController < ApplicationController
  def index
     @column = ["title","user_id","classname","uploaded_time"]
  end
  def showall
  end
  def sort
  end
  def search
     @column = ["title","user_id","classname","uploaded_time"]
    if request.post?
     @questions = EbaQuestion.order(params[:sort]).where(['title LIKE ?', "%#{params[:search]}%"])
    end
  end
end
