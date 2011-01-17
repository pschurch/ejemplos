class Curso < ActiveRecord::Base
  belongs_to :profesor
  belongs_to :asignatura
  has_many :mallas
  has_many :alumnos, :through => :mallas
end
