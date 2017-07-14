# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Chatroom.create(:name=>"Coco Bus")
Chatroom.create(:name=>"Keio Bus")
Chatroom.create(:name=>"Chuo Line")

HtRoute.create(:name=>"Coco Bus",:route_detail=>"Higashikoganei-Hosei",:chat_id=>0)
HtRoute.create(:name=>"Keio Bus",:route_detail=>"Higashikoganei-Hosei",:chat_id=>0)
HtRoute.create(:name=>"Chuo Line",:route_detail=>"Tokyo-Takao,Toyota,Hachioji",:chat_id=>0)

require "csv"
CSV.foreach('db/timetable.csv') do |row|
  Timetable.create(:inbound=>row[0],:route_id=>row[1],:hour=>row[2],:min=>row[3])
end

ans = EbaQuestion.create(:title =>"How many host address in the subnet 192.168.0.0/24?",:user_id => 1,:classname => "Network",:uploaded_time => "2017-06-21 05:18:00 UTC")
EbaAnswer.create(:answer => "254",:user_id => 2,:eba_question_id => ans[:id],:uploaded_time => "2017-06-21 05:19:00 UTC")
EbaAnswer.create(:answer => "255",:user_id => 2,:eba_question_id => ans[:id],:uploaded_time => "2017-06-21 05:20:00 UTC")
EbaAnswer.create(:answer => "256",:user_id => 2,:eba_question_id => ans[:id],:uploaded_time => "2017-06-21 05:21:00 UTC")

