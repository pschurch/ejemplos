class Profesor < ActiveRecord::Base
  has_many :cursos
  has_many :asignaturas, :through => :cursos
end
