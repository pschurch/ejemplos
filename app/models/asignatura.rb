class Asignatura < ActiveRecord::Base
  has_many :cursos
  has_many :profesors, :through => :cursos

end
