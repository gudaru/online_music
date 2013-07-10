namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_musics
    make_artists
    make_makes
  end
end

def make_users
  User.create!(name: "admin",
               email: "admin@gmail.org",
               password: "123456",
               password_confirmation: "123456")
  30.times do |n|
    name  = Faker::Name.name
    email = "user#{n+1}@gmail.org"
    password  = "123456"
    User.create!(name: name,
                 email: email,
                 password: password,
                 password_confirmation: password)
  end
end

def make_musics
  37.times do |n|
    name = Faker::Name.name
    lyrics = "abc"
    m_src = "/audios/#{n+1}.mp3"
    Music.create!(name: name,
                  lyrics: lyrics,
                  m_src: m_src)
  end
end

def make_artists
  18.times do |n|
    name = Faker::Name.name
    info = "This article is about the Portuguese footballer. For the Brazilian footballer, see Ronaldo. For other people named Ronaldo, see Ronaldo (name) redirects here. For other uses, see CR7 (disambiguation).
This name uses Portuguese naming customs. The first or maternal family name is dos Santos and the second or paternal family name is Aveiro."
    Artist.create!(name: name,
                   info: info)
  end
end


def make_makes
  37.times do |n|
    m_id = n+1
    a_id = rand(1..18)
    Make.create!(music_id: m_id,
                 artist_id: a_id)
  end
end
