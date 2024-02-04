class Turma
    attr_reader :alunos, :professor

    def initialize(alunos, professor)
        @alunos = Array.new
        @professor = professor
    end

    def listar alunos
        @alunos.each do |aluno|
            puts "Nome: #{aluno.nome}, Matrícula: #{aluno.matricula}"
    end

end