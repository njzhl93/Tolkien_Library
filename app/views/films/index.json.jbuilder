json.array!(@films) do |film|
  json.extract! film, :id, :title, :date, :content, :director, :character
  json.url film_url(film, format: :json)
end
