class Livro
    attr_reader :nome, :ano , :preco

    def initialize(nome, ano,preco)
        @nome = nome
        @ano = ano
        @preco = preco
    end
end