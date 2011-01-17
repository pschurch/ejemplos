module ApplicationHelper
  # Orden Ascendente y Descendente en las columnas
  def sortable(column, title = nil)  
    title ||= column.titleize  
    css_class = (column == sort_column) ? "current #{sort_direction}" : nil 
    direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"  
    link_to title, :sort => column, :direction => direction  
  end  

 #Titulo básico para cada página
 def titulos
  titulo_base = "Ejemplos"
  if @titulo.nil?
    titulo_base
  else
    "#{titulo_base} - #{@titulo}"
  end
 end
end

