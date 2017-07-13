# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ans = EbaQuestion.create(:title =>"How many host address in the subnet 192.168.0.0/24?",:user_id => 1,:classname => "Network",:uploaded_time => "2017-06-21 05:18:00 UTC")
EbaAnswer.create(:answer => "254",:user_id => 2,:eba_question_id => ans[:id],:uploaded_time => "2017-06-21 05:19:00 UTC")
EbaAnswer.create(:answer => "255",:user_id => 2,:eba_question_id => ans[:id],:uploaded_time => "2017-06-21 05:20:00 UTC")
EbaAnswer.create(:answer => "256",:user_id => 2,:eba_question_id => ans[:id],:uploaded_time => "2017-06-21 05:21:00 UTC")
