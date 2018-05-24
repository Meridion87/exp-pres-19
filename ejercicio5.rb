module Herviboro
  DEFINIR = 'Sólo me alimento de vegetales!'

  def dieta
    "Soy un Herviboro!"
  end
end

class Animal
  def saludar
    "Soy un animal!"
  end
end

class Conejo < Animal
  include Herviboro
  def initialize(name)
    @name = name
  end
end

conejo = Conejo.new('Bugs Bunny')
puts conejo.saludar
puts conejo.dieta
puts Herviboro::DEFINIR

# Pregunta: ¿Por qué es mejor solución la implementación de Mixin que mediante
# Herencia de Herencia?

#Es más fácil acceder a variables de clase
