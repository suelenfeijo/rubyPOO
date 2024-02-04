class Livro
    attr_reader :nome, :ano , :preco

    def initialize(nome, ano,preco)
        @nome = nome
        @ano = ano
        @preco = preco
    end

    def mostrar_dados
        puts "Título: #{@nome}, Ano: #{@ano}, Preço: #{@preco}"
    end
end

livrao = Livro.new("Percy Jackson", 2010, 70.79)

livrao.mostrar_dados