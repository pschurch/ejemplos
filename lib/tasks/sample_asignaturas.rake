require 'faker'
namespace :db do
  task :asignaturas => :environment do
    para_asignaturas
  end
end

def para_asignaturas
  Asignatura.create!(:name => "Matematica")
  Asignatura.create!(:name => "Fisica")
  Asignatura.create!(:name => "Quimica")
  Asignatura.create!(:name => "Biologia")
  Asignatura.create!(:name => "Historia")
  Asignatura.create!(:name => "Filosofia")
  Asignatura.create!(:name => "Lenguaje")
end

