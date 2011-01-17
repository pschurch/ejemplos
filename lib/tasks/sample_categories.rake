require 'faker'
namespace :db do
  task :categories => :environment do
    para_categories
  end
end

def para_categories
  Category.create!(:name => "Vestuario Hombre")
  Category.create!(:name => "Vestuario Dama")
  Category.create!(:name => "Mundo Infantil")
  Category.create!(:name => "Electrodomesticos")
  Category.create!(:name => "Linea Blanca")
  Category.create!(:name => "Ofertas")
end

