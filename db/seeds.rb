50.times do
    User.create(
        name: Faker::Name.name_with_middle,
        email: Faker::Internet.free_email,
        password_digest: "1",
        img_url: Faber::Avatar.image,
        favorite_genre: Faker::Book.genre,
        age: rand(18...110),
        bio: Faker::Dune.quote,
        latitude: Faker::Address.latitude,
        longitude: Faker::Address.longitude
    )
end

200.times do
    Book.create(
        title: Faker::Book.title,
        author: Faker::Book.author,
        description: Faker::Company.catch_phrase,
        genre: Faker::Book.genre,
        isbn: Faker::Code.isbn,
        publisher: Faker::Book.publisher,
        user: User.ids.sample
    )
end

200.times do
    Review.create(
        content: Faker::Hipster.sentence,
        book: Book.ids.sample,
        user: User.ids.sample
    )
end