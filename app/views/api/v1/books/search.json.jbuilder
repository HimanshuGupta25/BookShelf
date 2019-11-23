json.results @books do |book|
  json.id book["id"]
	json.title book["title"]
	json.author book["author"]
	json.description book["description"]
  json.ISBN book["ISBN"]
  json.image book["image"]["url"]
end
