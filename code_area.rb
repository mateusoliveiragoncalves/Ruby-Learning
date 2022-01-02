require 'colorize'
codigo_area = {
    "Curitiba" => "41",
    "São Paulo" => "11",
    "Floripa" => "48",
    "Rio de Janeiro" => "21",
    "Vila Velha" => "27",
    "Belo Horizonte" => "31",
    "Porto Alegre" => "51",
    "Brasília" => "61",
    "Goiania" => "62",
    "Palmas" => "63",
    "Cuiabá" => "65",
    "Salvador" => "71",
    "Maceió" => "82"
}

#pegando as chaves do dicionario
def pega_nome_cidades(algum_hash)
    algum_hash.keys
end

#pegando o codigo com o valor explicitado
def pega_codigo_area(algum_hash, key)
    algum_hash[key]
end

loop do
    puts "Você deseja procurar um código de área com base em um nome de capital brasileirea? (Y/N)"

    resposta = gets.chomp.downcase
    break if resposta != "y"

    puts "De qual cidade você quer saber o código?"
    puts pega_nome_cidades(codigo_area)
    puts
    puts "Digite sua seleção:"
    prompt = gets.chomp
    puts
    if codigo_area.include?(prompt)
        puts "O código de area de #{prompt} é #{pega_codigo_area(codigo_area, prompt)} \n".yellow
    else
        puts "você inseriu uma cidade que nao está em nossa base de dados atual."
    end
end