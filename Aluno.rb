#inicio da classe
class Aluno

    #define o atributo declarado com a permissão de leitura e modificação por outras classes
    # não é boa prática
    #attr_accessor :nome, :idade

     #define o atributo declarado apenas a permissão de leitura por outras classes
    # é a forma correta de utilizar, e assim, criando os construtores para setar os dados
    attr_reader :nome, :idade
    @last_name

    #apenas leitura
    #attr_writer :nome, :idade

    #construtor -> initialize é uma palavra reservada para inicializar o objeto construido
    def initialize(nome, idade)
        @nome = nome
        @idade = idade
    end

    def add_last_name (last_name)
        @last_name = last_name
    end

    def mostrar_dados
        #self é this 
        # -> #{} é chamado de interpolação , funciona como uma concatenação
        puts "Nome:#{self.nome} #{@last_name}, Idade:#{@idade}"
    end
=begin
    #atributos
    @nome
    @idade


    #seria o método set 
    def mudar_nome (nome)
       @nome = nome
    end

    #seria o método get 
    def mostra_nome
       @nome
    end
=end


#final da classe
end


#instânciando objeto
aluno1 = Aluno.new("Suelen", 20)
aluno1.add_last_name("Feijo")
#aluno1.mudar_nome("Suelen")
#aluno1.idade = 20

#puts aluno1.mostra_nome


#aluno1.nome = "Feijo"
#aluno1.idade = 20

#puts aluno1.nome
#puts aluno1.idade

aluno1.mostrar_dados
