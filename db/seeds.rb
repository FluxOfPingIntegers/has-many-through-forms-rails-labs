# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create(username: "test user", email: "foo@bar.com")
post = Post.create(title: "test post", content: "test post content")
category = Category.create(name: "test category")
user.comments.build(content: "test comment content", post_id: post.id )
post.post_categories.build(category_id: category.id)