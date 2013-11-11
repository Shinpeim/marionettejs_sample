# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create([{id:1, name: "小沢健二"}, {id:2, name: "コーネリアス"}, {id:3, name:"オリジナルラブ"}])
Record.create([
  {title:"犬は吠えるがキャラバンは進む", artist_id:1}, {title:"LIFE", artist_id: 1}, {title: "球体の奏でる音楽", artist_id: 1},
  {title:"First Question Award", artist_id:2}, {title:"69/96", artist_id: 2}, {title: "FANTASMA", artist_id: 2},
  {title:"風の歌を聴け", artist_id:3}, {title:"DESIRE", artist_id: 3}, {title: "RAINBOW RACE", artist_id: 3},
])
