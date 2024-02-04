require_relative 'Pessoa'
class Professor < Pessoa
    attr_reader :disciplina

    def initialize(nome, idade, disciplina)
        super(nome,idade)
        @matricula = matricula
    end
end