json.array!(@books) do |book|
  json.extract! book, :id, :title, :date, :content, :writer, :publisher
  json.url book_url(book, format: :json)
end
