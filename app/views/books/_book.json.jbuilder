json.extract! book, :id, :title, :author, :ISBN, :description, :language, :image, :created_at, :updated_at
json.url book_url(book, format: :json)
