class Producto < ActiveRecord::Base
  validates :nombre,  :presence => true 
  validates :precio,  :presence => true 
  validates :marca,  :presence => true 
  validates_numericality_of :precio
end
