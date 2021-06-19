json.id author.id

json.author do
	json.first_name author.first_name
	json.last_name author.last_name
	json.date_0f_birth author.date_of_birth
end

json.books author.books.each do |book|
	json.title book.book_title
end