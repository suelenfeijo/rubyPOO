class Livro
    attr_reader :nome, :ano , :preco

    def initialize(nome, ano,preco)
        @nome = nome
        @ano = ano
        @preco = preco
    end
end

livrao = Livro.new("Percy Jackson", 2010, 70.79)

puts livrao.nome
puts livrao.ano
puts livrao.preco