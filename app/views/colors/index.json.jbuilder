json.array!(@colors) do |color|
  json.extract! color, :id, :name, :hexcode
  json.url color_url(color, format: :json)
end
