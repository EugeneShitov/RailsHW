# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Author.create([
                {
                  name: 'Serhiy Marchenko'
                },
                {
                  name: 'Oleksii Arestovych'
                },
                {
                  name: 'Gabe Newell'
                }
              ])

Article.create([
                 {
                   title: 'Inflation',
                   body: 'Yesterday I went to the store, the price of eggs went up!',
                   author_id: 1
                 },
                 {
                   title: 'War',
                   body: 'Imagine that Ukraine loses this war. Although, no, it is impossible!',
                   author_id: 2
                 },
                 {
                   title: 'Games',
                   body: 'When Dota 3 will be released?',
                   author_id: 3
                 }
               ])

Comment.create([
                 {
                   body: 'Plot for a new game!',
                   author_id: 3,
                   article_id: 2
                 },
                 {
                   body: 'It will bring a lot of money.',
                   author_id: 1,
                   article_id: 3
                 },
                 {
                   body: "I still can't believe it!",
                   author_id: 2,
                   article_id: 1
                 },
                 {
                   body: 'The community is looking for where to invest money!',
                   author_id: 1,
                   article_id: 3,
                   status: 'published'
                 },
                 {
                   body: 'In two or three weeks everything will be as before.',
                   author_id: 2,
                   article_id: 1,
                   status: 'published'
                 }
               ])

Tag.create([
             {
               name: 'True story'
             },
             {
               name: 'Fantasy'
             },
             {
               name: 'Thinking'
             }
           ])
