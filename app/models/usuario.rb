class Usuario < ActiveRecord::Base
  validates_presence_of :nombre, :rut, :digito, :edad => ": debe ingresar un valor."

  validates_numericality_of :edad, :only_integer => true, :message => ": debe ser un valor numerico."

  validates_numericality_of :sueldo, :only_integer => true, :message => ": debe ser un valor numerico.", :allow_blanck => true

  validates_format_of :email, :with => /^[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}$/i, :message => ": la direccion de correo no es valida.", :allow_blank => true 

 def self.search(search)
  if search
    find(:all, :conditions => ['nombre LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
 end

end 

