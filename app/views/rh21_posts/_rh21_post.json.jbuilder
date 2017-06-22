json.extract! rh21_post, :id, :timestamp, :title, :content, :likes, :dislikes, :created_at, :updated_at
json.url rh21_post_url(rh21_post, format: :json)
