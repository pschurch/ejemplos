class Malla < ActiveRecord::Base
  belongs_to :alumno
  belongs_to :curso
end
