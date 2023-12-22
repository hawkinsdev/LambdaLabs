##Instala las dependencias instanciadas en el gemfile
bundle install

##Crea la base de datos como se especifica en el archivo database.yml 
rails db:create

##Ejecuta las migracaciones para la creacion de las tablas en la base de datos
rails db:migrate

##Crea datos para pruebas en la db gracias a las fixtures definidas
rails db:fixtures:load

##Inicia el servidor de rails
rails s

##Ejecuta las pruebas automatizadas
rspec