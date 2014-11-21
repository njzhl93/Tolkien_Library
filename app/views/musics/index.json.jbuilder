json.array!(@musics) do |music|
  json.extract! music, :id, :title, :date, :content, :performer, :publisher
  json.url music_url(music, format: :json)
end
