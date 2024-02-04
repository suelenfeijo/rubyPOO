class Turma
    attr_reader :alunos, :professor

    def initialize(alunos, professor)
        @alunos = alunos
        @professor = professor
    end

    def  dados_turma
        puts "Matéria: #{professor.disciplina} , Professor(a): #{professor.nome}"
        listarAlunos
    end

    private def listarAlunos
        @alunos.each do |aluno|
            puts "Nome: #{aluno.nome}, Matrícula: #{aluno.matricula}"
        end
    end

end