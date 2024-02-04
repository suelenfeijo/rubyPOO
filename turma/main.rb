require_relative 'aluno'
require_relative 'professor'
require_relative 'turma'


aluno1 = Aluno.new('Carlão',30,1234)
aluno2 = Aluno.new('Su',20,5678)
professor1 = Professor.new('Pâmela',27,"Banco de Dados")
turma1 = Turma.new([aluno1,aluno2], professor1)

turma1.dados_turma

