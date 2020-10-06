INSERIR_RECEITA = 1
VISULAIZAR_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4

def bem_vindo
    puts "Bem-vindo ao Cookbook, sua rede social de receitas"
end

def menu()
    puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
    puts "[#{VISULAIZAR_RECEITAS}] Ver todas as receitas"
    puts "[#{BUSCAR_RECEITAS}] Buscar receita"
    puts "[#{SAIR}] Sair"
    
    print "Escolha uma opção: "
    return gets.to_i()
end

def inserir_receita()
    puts "Digite o nome da receita:"
    nome = gets.chomp()
    #receitas << nome
    puts "Digite o tipo da receita:"
    tipo = gets.chomp()
    
    #puts "Receita " + nome + " cadastrada com sucesso!"
    puts
    puts "Receita #{nome} cadastrada com sucesso!"
    puts
    return {nome: nome, tipo: tipo}
end

def imprimir_receitas(r)
    puts "=============== Receitas cadastradas ================"
    #for receita in receitas do
    #    puts receita
    #end
    #receitas.each do |receita|
    #    puts receita
    #end
    #puts receitas
    r.each do |receita|
        "#{receita[:nome]} - #{receita[:tipo]}"
    end
    puts
    if r.empty?
        puts "Nenhuma receita cadastrada!"
    end
end 

bem_vindo()
receitas = []
opcao = menu()

loop do
    if(opcao == INSERIR_RECEITA)
        receitas << inserir_receita()
    elsif(opcao == VISULAIZAR_RECEITAS)
        imprimir_receitas(receitas)
    elsif(opcao == SAIR)
        break
    else
        puts "Opção inválida!"
    end
    opcao = menu()
end

puts
puts "Obrigado por usar o Cookbook"