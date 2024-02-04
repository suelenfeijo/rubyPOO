
#importando a classe
require_relative 'Animal'

class Cachorro < Animal
    attr_reader :raca

    def initialize(nome,raca)
        super(nome)
        @raca = raca
    end

   def comunicar
    "Eu sou o cachorro super power mega hiper do ruby, au au au!..."
   end
end


bob = Cachorro.new("Marley", "Golden Retriever")

puts bob.raca
puts bob.nome
puts bob.comunicar
