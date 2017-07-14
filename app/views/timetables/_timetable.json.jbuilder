json.extract! timetable, :id, :inbound, :route_id, :hour, :min, :created_at, :updated_at
json.url timetable_url(timetable, format: :json)
