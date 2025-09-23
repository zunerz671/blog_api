# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

author1 = Author.find_or_create_by(
  name: "Author1",
  age: 35
)

author2 = Author.find_or_create_by(
  name: "Author2",
  age: 40
)

article1 = Article.find_or_create_by(
  title: "Article1",
  content: "Content on Article 1",
  author_id: 1
)

article2 = Article.find_or_create_by(
  title: "Article2",
  content: "Content on Article 2",
  author_id: 2
)
