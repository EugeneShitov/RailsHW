# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Author.create([
                {
                  name: 'Oleg'
                },
                {
                  name: 'Natan'
                },
                {
                  name: 'Mike'
                }
              ])

Article.create([
                 {
                   title: 'Nice',
                   body: 'Best article ever!',
                   author_id: 1
                 },
                 {
                   title: 'Good',
                   body: 'Good article!',
                   author_id: 2
                 },
                 {
                   title: 'Bad',
                   body: 'Bad article!',
                   author_id: 3
                 }
               ])

Comment.create([
                 {
                   body: 'bestie!!!',
                   author_id: 3,
                   article_id: 2
                 },
                 {
                   body: 'Okay, not bad',
                   author_id: 1,
                   article_id: 3
                 },
                 {
                   body: 'Not bad post...',
                   author_id: 2,
                   article_id: 1
                 },
                 {
                   body: 'Good words',
                   author_id: 1,
                   article_id: 3,
                   status: 1
                 },
                 {
                   body: 'beautiful idea',
                   author_id: 2,
                   article_id: 1,
                   status: 1
                 }
               ])
