# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(name: 'Brooke', email: 'brooke@brooke.com', password: '1234')
Book.create(title:'Brideshead Revisited')
Comic.create(title:'Guardians of the Galaxy')
GraphicNovel.create(title:'Scott Pilgrim')
Movie.create(title:'Silver Linings Playbook')
TvSeason.create(title:'Breaking Bad')