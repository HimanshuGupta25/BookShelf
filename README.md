# README

About Assignment:-
A bookshelf assignment with CRUD operations and search using sphinx for caching redis server.

Requirements(*)
1. Redis server
2. Sphinx server
3. MySql server

Below is the search api:-
url :        "/api/v1/books/search.json"
parameter :  "term"
method :     "get"

Example:-
http://abc.com/api/v1/books/search.json?term=title
Response:-
results:[
          {
            id: 1,
            title: "Title",
            description: "Some description",
            author: "Author Name",
            ISBN: 123456789,
            image: "Image_url"
          }
]
