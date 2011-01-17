require 'faker'
namespace :db do
  task :productos => :environment do
    para_productos
  end
end

def para_productos
  Producto.create!(:nombre => "Cafe", :precio => "1230", :marca => "Nescafe", :descripcion => "300 gr")
  Producto.create!(:nombre => "Azucar", :precio => "800", :marca => "Miraflor", :descripcion => "El kilo")
  Producto.create!(:nombre => "Aceite", :precio => "1800", :marca => "Magico", :descripcion => "1 litro")
  Producto.create!(:nombre => "Tallarines", :precio => "1990", :marca => "Carossi", :descripcion => "500 grs")
end

