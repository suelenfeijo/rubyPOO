
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

def updateContact
    #se o usuário apertar enter e não quiser alterar, mantém o nome que estava e não altera nada
    print "Qual nome você quer editar: "
    nome = gets.chomp

    @agenda.each do |contato|
        if contato[:nome].downcase == (nome.downcase)
            print "Nome para editar (aperte enter para cancelar alterção):"
            nome_atualizado = contato[:nome]

            contato [:nome] = gets.chomp
            #condição ternária , se vazia , aqui [:nome].empty? retorna  = true
            #importante: .empty? , a primeira ? é do método isEmpty, a segunda é da análise ternária
            contato [:nome] = contato[:nome].empty? ? nome_atualizado : contato[:nome]


            print "Telefone para editar (aperte enter para cancelar alterção):"
            telefone_atualizado = contato[:telefone]

            contato [:telefone] = gets.chomp
            contato [:telefone] = contato[:telefone].empty? ? telefone_atualizado : contato[:telefone]


        end
    end
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
    when codigo == 4
        updateContact
    end
end
