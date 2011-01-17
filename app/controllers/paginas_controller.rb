class PaginasController < ApplicationController
   def contacto
    @titulo = "Contacto"
   end

   def datos
    @titulo = "Datos"
   end

   def ayuda
    @titulo = "Ayuda"
   end

end
