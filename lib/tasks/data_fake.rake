namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_musics
    make_artists
    make_makes
    make_comments
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
  100.times do |n|
    name = Faker::Name.name
    lyrics = Faker::Lorem.sentence(5)
    m_src = "/audios/#{rand(1..37)}.mp3"
    Music.create!(name: name,
                  lyrics: lyrics,
                  m_src: m_src)
  end
end

def make_artists
  18.times do |n|
    name = Faker::Name.name
    info = Faker::Lorem.sentence(5)
    Artist.create!(name: name,
                   info: info)
  end
end


def make_makes
  150.times do |n|
    if n<100
      m_id = n+1
    else
      m_id = rand (1..20)
    end
    a_id = rand(1..18)
    Make.create!(music_id: m_id,
                 artist_id: a_id)
  end
end

def make_comments
  500.times do |n|
    u_id = rand(1..30)
    m_id = rand(1..37)
    content = Faker::Lorem.sentence(5)
    Comment.create(music_id: m_id,
                   user_id: u_id,
                   content: content)
  end
end
