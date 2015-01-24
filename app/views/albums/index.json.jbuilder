json.array!(@albums) do |album|
  json.extract! album, :id, :look_title, :look_desc, :img_url, :link_url, :link_name
  json.url album_url(album, format: :json)
end
