require_relative 'Abstracao'
class Animal include Comunica

    attr_reader :nome


    def initialize(nome)
        @nome = nome
    end

#    def comunicar
#       puts "Oi, eu sou a classe mãe, e não nasci herdeira."
#    end

end



