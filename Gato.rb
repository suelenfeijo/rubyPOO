#importando a classe
require_relative 'Animal'
class Gato < Animal

    attr_reader :raca

    def initialize (raca,nome)
        super(nome)
        @raca = raca
    end

    def comunicar
        puts("Naaa tibeinatee, pararitibaba , tan nan nan , eu sou o gato da selva, tan nana nan")
    end

end

simba = Gato.new("Simba", "Rei Leão")

puts simba.nome
puts simba.raca
puts simba.comunicar
