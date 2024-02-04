class Livro
    attr_reader :nome, :ano , :preco

    def initialize(nome, ano,preco)
        @nome = nome
        @ano = ano
        @preco = dar_desconto(preco)
    end

    def mostrar_dados
        puts "Título: #{@nome}, Ano: #{@ano}, Preço: #{@preco}"
    end

    
    private def dar_desconto(preco)
        if @ano < 2000
           preco * 0.9
        else
           preco
        end
    end
end

livrao = Livro.new("Percy Jackson", 1999, 70.79)

#livrao.dar_desconto
livrao.mostrar_dados
