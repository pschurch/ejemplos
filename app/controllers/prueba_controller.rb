class PruebaController < ApplicationController
   def saludar
     t = Time.now
     @time = t.strftime('%H:%m:%S')
   end
end

