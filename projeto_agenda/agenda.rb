
#QUANDO A VÁRIAVEL ESTÁ COM O @ pode ser acessado por todo o programa atual
@agenda = [
    {nome: "Nívea", telefone: "8199998888"},
    {nome: "Alexandra", telefone: "81977776666"}
]

def allContacts
    @agenda.each do |contato|
        puts "#{contato[:nome]} - #{contato[:telefone]}"
        puts "----------------------------------------"
    end
end

def viewContact
    print "Qual nome você deseja: "
    nome = gets.chomp
    @agenda.each do |contato|
        if  contato[:nome].downcase.include?(nome.downcase)
            puts "#{contato[:nome]} - #{contato[:telefone]}"
        end
    end

end

def addContact
    print "Nome: "
    nome = gets.chomp
    print "Telefone: "
    telefone = gets.chomp
        
    @agenda << {nome: nome, telefone: telefone  }
end


loop do

puts "1. Contatos\n2. Adicionar Contato\n3. Ver Contato\n4. Editar Contato\n5. Remover Contato\n0. Sair"

    codigo = gets.chomp.to_i

    case 
    when codigo == 0
        puts "See you later!"
        break
    when codigo == 1
        allContacts
    when codigo == 2
        addContact
    when codigo == 3
        viewContact
    end
end
