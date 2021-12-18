'''Cifras de César
cria um alfabeto como array na variavel alfabeto
encripta o alfabeto com o encriptador
o encriptador cria um Hash que contém o valor original do caractere
    como chave e o novo valor , dado pela razao, como valor através do método "rotate"
'''

def caesar_cipher(str, razao = 1)
    alfabeto   = Array('a'..'z')
    encriptador  = Hash[alfabeto.zip(alfabeto.rotate(razao))]
    str.chars.map { |c| encriptador.fetch(c, " ") }
end

p caesar_cipher("cora", razao = 1).join