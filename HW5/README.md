1. <pre> cd ~/GH_review/RailsHW/HW5; bundle install; rails s </pre>

2. Rename file `database.example.yml` to `database.yml` in `./config/`
3. Change your info in file `database.yml` (username and password)
4. <pre> rails db:create; rails db:migrate </pre>
5. [click me](http://[::1]:3000)
# Ви можете:
1. Створити **автора**
2. Створити **статтю**
3. Створити **коментар** до **статті**

## Робота в консолі
<pre> rails c </pre>
1. Створюємо автора `Author.create(name: "Імʼя")`
2. Створюємо статтю `Article.create(title: "заголовок статті", body: "тіло статті", author_id: id автора)`
3. Створюємо коментар до статті `Comment.create(body: "тіло коментаря", author_id: id автора, article_id: id статті)`
також можна вказати параметр `status: 0 або 1`, за замовчуванням, якщо не вказувати цей параметр, статус буде - 0.

0 - неопубліковано, 1 - опубліковано
___
* Ви не можете створити автора без імені.
* Ви не можете створити статтю без автора, заголовка або тіла статті.
* Ви не можете створити коментар без статті, автора або тіла коментаря.
___

# Робота на localhost
## Дії з коментарями
* дивитись усі коментарі `/api/v1/comments`
* дивитись усі опубліковані коментарі `/api/v1/comments/published`
* дивитись усі неопубліковані коментарі `/api/v1/comments/unpublished`
* змінити статус вказаного коментаря на протилежний `/api/v1/comments/1/change_status`
## Дії з статтями
* подивитись усі статті `/api/v1/articles`
* подивитись коментарі до конкретної статті `/api/v1/articles/1` (спочатку стаття потім коментарі)
* подивитись опубліковані коментарі конкретної статті `/api/v1/articles/1/published`
* подивитись неопубліковані коментарі конкретної статті `/api/v1/articles/1/unpublished`
