require 'faker'
namespace :db do
  task :profesores => :environment do
    para_profesors
  end
end

def para_profesors
  Profesor.create!(:name => "Felipin Mate", :email => "fmate@profes.com")
  Profesor.create!(:name => "Digoberto Kilminu", :email => "digkil55@term.es")
  Profesor.create!(:name => "Minerva Bilogy", :email => "minnie.bil@yahoo.es")
end
