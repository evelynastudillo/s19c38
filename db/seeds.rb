# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Todo.destroy_all
Todo.create(
  name: 'Salir Temprano de la pega',
  photo: "https://i1.wp.com/www.profe-de-espanol.de/wp-content/uploads/2016/06/Download-5-300x300.png?fit=450,300&zoom=2&strip=all"
)

Todo.create(
  name: 'Hacer Pebre',
  photo: "https://i.pinimg.com/originals/71/d4/08/71d408417c1b83f795c66bcef4b9e9e5.jpg"
)

Todo.create(
  name: 'Comer Asado',
  photo: "http://www.tallereslumen.cl/wp-content/uploads/2018/08/asado_800x800-300x300.jpg"
)

Todo.create(
  name: 'Comer Empanada',
  photo: "http://i1.wp.com/www.serviestrategicos.cl/portal/wp-content/uploads/2016/05/empanadas-de-pino.jpg?resize=300%2C300"
)


Todo.create(
  name: 'Ir a una Fonda',
  photo: "http://www.cultura.gob.cl/wp-content/uploads/2014/09/15081494149_f896a67a43_z-300x300.jpg"
)
Todo.create(
  name: 'Tomar Terremotos (muchos)',
  photo: "https://t1.rg.ltmcdn.com/es/images/9/1/3/img_terremoto_6_45319_300_square.jpg"
)
Todo.create(
  name: 'Bailar cueca (poco)',
  photo: "https://cl.superprof.com/imagenes/anuncios/profesor-home-joven-bailarina-realiza-clases-cueca-danzas-latinoamericanas-como-samba-marinera-cumbia-colombiana-otros.jpg"
)

Todo.create(
  name: 'Encumbrar Volantines',
  photo: "http://blog.hellowine.cl/wp-content/uploads/2015/09/volantin1-300x300.jpg"
)
Todo.create(
  name: 'Dieta Post 18',
  photo: "https://coastrangecrossfit.com/wp-content/uploads/2018/06/Keto-MEME.jpg"
)
