require 'faker'
namespace :db do
  task :clientes => :environment do
    para_clientes
  end
end

def para_clientes
  Cliente.create!(:name => "Jumbo")
  Cliente.create!(:name => "Paris")
  Cliente.create!(:name => "Ripley")
  Cliente.create!(:name => "Falabella")
end

