# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# JSON 파일 watcha_boxoffice.json 파일들에 들어있는

# 영화 정보를 읽어와서
movies = JSON.parse(File.read('watcha_boxoffice.json'))

list = movies["cards"]

list.each do |movie|
  Movie.create(
  title: movie["items"][0]["item"]["title"],
  poster: movie["items"][0]["item"]["poster"]["original"],
  remote_poster_url: movie["items"][0]["item"]["poster"]["original"], # 캐리어웨이브가 방해하지 못하게 막음 앞에리모트 뒤에 url
  genre: movie["items"][0]["item"]["main_genre"],
  nation: movie["items"][0]["item"]["nation"],
  director: movie["items"][0]["item"]["directors"][0]["name"]
  )
end


  User.create(
    email: "admin@admin.com",
    password: "123123",
    password_confirmation: "123123",
    nickname: "관리자",
    role: "admin"
  )

  User.create(
    email: "man@man.com",
    password: "123123",
    password_confirmation: "123123",
    nickname: "aoslwj",
    role: "manager"
  )

  User.create(
    email: "asdf@asdf.com",
    password: "123123",
    password_confirmation: "123123",
    nickname: "유저"
  )

#Rails.root.to_s

# Movie.create(
#   title:
#   poster:
#   genre:
#   nation:
#   director:
# )
