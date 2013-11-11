json.array!(@manage_friends) do |manage_friend|
  json.extract! manage_friend, :from_user_id, :to_user_id
  json.url manage_friend_url(manage_friend, format: :json)
end
