json.array!(@comment_places) do |comment_place|
  json.extract! comment_place, :id
  json.url comment_place_url(comment_place, format: :json)
end
