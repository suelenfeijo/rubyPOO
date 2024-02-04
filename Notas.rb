class Notas 

    def notas(*args)
        notas = []
        notas.push(*args)
        notas
    end
end

pontos = Notas.new
avaliacao1 = pontos.notas(10,5,9,10.6,70)
puts avaliacao1