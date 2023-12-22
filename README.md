# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
    ruby 3.1.2p20

* System dependencies
    ##Instala las dependencias instanciadas en el gemfile
    bundle install

* Configuration

* Database creation
    ##Crea la base de datos como se especifica en el archivo config/database.yml 
    rails db:create

* Database initialization
    ##Ejecuta las migraciones
    rails db:migrate
    ##Crea datos para pruebas en la db gracias a las fixtures definidas
    rails db:fixtures:load

* How to run the test suite
    rspec

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
    ##Inicia el servidor de rails
    rails s
    