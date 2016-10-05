# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

phil_books = Book.create([
  {
    title: "The Shortness of Life",
    author: "Seneca",
    blurb: "Keys to a meaningful life.",
    why: "Live a more meaningful life by focusing on important things.",
    what: "A book on stoic philosophy.",
    how: "Read end to end.",
    cover_url: "https://images-na.ssl-images-amazon.com/images/I/4117tVQWdQL._SX295_BO1,204,203,200_.jpg"
  },
  {
    title: "The Shortness of Life",
    author: "Seneca",
    blurb: "Keys to a meaningful life.",
    why: "Live a more meaningful life by focusing on important things.",
    what: "A book on stoic philosophy.",
    how: "Read end to end.",
    cover_url: "https://images-na.ssl-images-amazon.com/images/I/4117tVQWdQL._SX295_BO1,204,203,200_.jpg"
  },
  {
    title: "The Shortness of Life",
    author: "Seneca",
    blurb: "Keys to a meaningful life.",
    why: "Live a more meaningful life by focusing on important things.",
    what: "A book on stoic philosophy.",
    how: "Read end to end.",
    cover_url: "https://images-na.ssl-images-amazon.com/images/I/4117tVQWdQL._SX295_BO1,204,203,200_.jpg"
  },
  ])

psych_books = Book.create([
    {
        title: "Awaken the Giant Within",
        author: "Tony Robbins",
        blurb: "Take control of yourself.",
        why: "Take control of yourself.",
        what: "A book on practical psychology.",
        how: "Read end to end.",
        cover_url: "https://images-na.ssl-images-amazon.com/images/I/51lXzR%2BxTOL._SX327_BO1,204,203,200_.jpg" 
    },
    {
        title: "Awaken the Giant Within",
        author: "Tony Robbins",
        blurb: "Take control of yourself.",
        why: "Take control of yourself.",
        what: "A book on practical psychology.",
        how: "Read end to end.",
        cover_url: "https://images-na.ssl-images-amazon.com/images/I/51lXzR%2BxTOL._SX327_BO1,204,203,200_.jpg" 
    },
    {
        title: "Awaken the Giant Within",
        author: "Tony Robbins",
        blurb: "Take control of yourself.",
        why: "Take control of yourself.",
        what: "A book on practical psychology.",
        how: "Read end to end.",
        cover_url: "https://images-na.ssl-images-amazon.com/images/I/51lXzR%2BxTOL._SX327_BO1,204,203,200_.jpg" 
    },
    {
        title: "Awaken the Giant Within",
        author: "Tony Robbins",
        blurb: "Take control of yourself.",
        why: "Take control of yourself.",
        what: "A book on practical psychology.",
        how: "Read end to end.",
        cover_url: "https://images-na.ssl-images-amazon.com/images/I/51lXzR%2BxTOL._SX327_BO1,204,203,200_.jpg" 
    },
    {
        title: "Awaken the Giant Within",
        author: "Tony Robbins",
        blurb: "Take control of yourself.",
        why: "Take control of yourself.",
        what: "A book on practical psychology.",
        how: "Read end to end.",
        cover_url: "https://images-na.ssl-images-amazon.com/images/I/51lXzR%2BxTOL._SX327_BO1,204,203,200_.jpg" 
    },
    ]) 

bios = Book.create([
        {
            title: "Elon Musk",
            author: "Ashley Vance",
            blurb: "To Mars!",
            why: "Take control of yourself.",
            what: "Elon's Musks life.",
            how: "Read end to end.",
            cover_url: "https://images-na.ssl-images-amazon.com/images/I/5174GQsw2oL._SX329_BO1,204,203,200_.jpg"
        },
        {
            title: "Elon Musk",
            author: "Ashley Vance",
            blurb: "To Mars!",
            why: "Take control of yourself.",
            what: "Elon's Musks life.",
            how: "Read end to end.",
            cover_url: "https://images-na.ssl-images-amazon.com/images/I/5174GQsw2oL._SX329_BO1,204,203,200_.jpg"
        },

    ])   

phil_books.each do |book|
    book.categories = [Category.find(2)]
end

psych_books.each do |book|
    book.categories = [Category.find(7)]
end

bios.each do |book|
    book.categories = [Category.find(3)]
end