1. <pre>cd ~/GH_review/RailsHW/HW5; bundle install; rails s</pre>

2. Rename file `database.example.yml` to `database.yml` in `./config/`
3. Change your info in file `database.yml` (username and password)
4. <pre>rails db:migrate; rails db:setup</pre>
5. [click me](http://[::1]:3000)
# You can:
1. Create **author**
2. Create **article**
3. Create **comment** for **article**

## Console
<pre>rails c</pre>
1. We create an author `Author.create(name: '*')`
2. We create an article `Article.create(title: '*', body: '*', author_id: *)`
3. We create a comment on the article `Comment.create(body: '*', author_id: *, article_id: *)`
you can also specify a parameter `status: 0 or 1`, by default, if you do not specify this parameter, the status will be - 0.

0 - unpublished, 1 - published
___
* You cannot create an author without a name.
* You cannot create an article without an author, title, or article body.
* You cannot create a comment without an article, author, or comment body.
___

# localhost 
## Routes
### Articles
* see all articles  `/articles`
* find an article by a phrase `/articles?search=#`
`# is your phrase`
* filter articles by author `/articles?author=#`
  `# is author name`
* filter articles by tag `/articles?tag=#`
  `# is tag name`
### Comments
* see all comments on a specific article `/articles/:id/comments`
* see all published comments on a specific article `/articles/:id/comments/published`
* see all unpublished comments on a specific article `/articles/:id/comments/unpublished`
* change the status of a comment in a specific article to the opposite `/articles/:id/comments/:id/status`
* see last (10) comments for aticle `/article/:id/comments/latest`