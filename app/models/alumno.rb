class Alumno < ActiveRecord::Base
  has_many :mallas
  has_many :cursos, :through => :mallas
end
