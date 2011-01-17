require 'faker'

namespace :db do
  desc "Puebla la Base de Datos con datos de ejemplo"
  task :usuarios => :environment do
    # Rake::Task['db:reset'].invoke
    para_usuarios
  end
end

def para_usuarios
  Usuario.create!(:nombre => "Usuario Prueba",
                  :rut => "11111111",
                  :digito => "1",
                  :edad => 40,
                  :email => "prueba@test.com",
                  :sueldo => 380500,
                  :sexo => false )
  40.times do |n|
    nombre  = Faker::Name.name
    email = "prueba#{n+1}@test.com"
    num = (rand 9) + 1
    r = num.to_s
    rut = r+r+r+r+r+r+r+r
    edad  = (rand 70) + 10
    sueldo = 120000 + (rand 1000000)
    sx = rand 2

    Usuario.create!(:nombre => nombre,
                    :email => email,
                    :rut => rut,
                    :digito => r,
                    :edad => edad,
                    :sueldo => sueldo,
                    :sexo => sx )
  end
end

