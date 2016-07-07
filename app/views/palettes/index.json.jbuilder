json.array!(@palettes) do |palette|
  json.extract! palette, :id, :title
  json.url palette_url(palette, format: :json)
end
