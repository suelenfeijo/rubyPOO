class Calculadora 

=begin
    def somar(x ,y)

            return x + y
    end
=end

    #sentencio que estou passando vários argumentos  através do *args
    def somar(*args)
        #lista que vai receber os vários argumentos
        lista = []
        #empurrando para dentro da lista cada argumento que chega, um por vez
        lista.push(*args)
        #a cada elemento que chega, adiciono uma operação + para somar ao próximo item
        #detalhe: dispara exceção se forem tipos incompatíveis , ex: string + int
        lista.inject(:+)
    end
end

calc =  Calculadora.new

calculo = calc.somar(5,5,6,20,60)

puts calculo