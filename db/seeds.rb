# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Article.delete_all




admin = User.create(login:"Admin", password:"example", password_confirmation:"example",name:"Admin", lastname:"Admin",email:"email@example.com", photoURL:"Ruby.jpg", admin_status:true)
a = User.create(login:"Login", password: "password", password_confirmation:"password", name:"Name", lastname:"LastName", email:"email@example.com", photoURL:"Ruby.jpg", admin_status:false)
a2 = User.create(login:"Example", password: "password", password_confirmation:"password", name:"Імя", lastname:"Прізвище", email:"email1@example.com", photoURL:"Ruby.jpg", admin_status:false)


 article1= Article.create(title:"Article", photoURL: "Ruby.jpg", decsription: " Lorem ipsum dolor sit amet,
consectetur adipiscing elit,
sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", short_description:" Lorem ipsum dolor sit amet ",user_id: a.id )

article2 =Article.create(title:"Запис", photoURL: "Ruby.jpg", decsription: " Пангра́ма — фраза, вислів або текст в якому присутні всі літери абетки.
Як правило, панграми використовуються для перевірки відображення гарнітури шрифтів. Бажано, щоб українська панграма також мала в собі апостроф.
Для полегшення складання панграми ви можете скористатися формою нижче. Під час введення тексту, знизу будуть відображатися ще не використані літери.",
               short_description:" Це короткий опис статті ",user_id: a2.id )

article1.image.attach(io: File.open('app/assets/images/test.jpeg'), filename: 'test.jpeg', content_type: 'image/jpeg')
article2.image.attach(io: File.open('app/assets/images/Ruby.jpg'), filename: 'ruby.jpg', content_type: 'Ruby/jpg')

a.image.attach(io: File.open('app/assets/images/Ruby.jpg'), filename: 'ruby.jpg', content_type: 'Ruby/jpg')
a2.image.attach(io: File.open('app/assets/images/Ruby.jpg'), filename: 'ruby.jpg', content_type: 'Ruby/jpg')