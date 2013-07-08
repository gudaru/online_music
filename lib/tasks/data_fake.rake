namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_musics
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
