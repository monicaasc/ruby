## Ruby Básico - Anotações do curso QANinja

#### Impressão de informações [puts]
```ruby
puts 'Teste'
```

#### Ruby é uma linguagem dinamicamente tipada, não sendo necessário especificar o tipo
```ruby
nacionalidade = 'Brasileira'
```

#### Verificação de tipo | [Veja mais sobre tipos](https://pt.wikipedia.org/wiki/Ruby_(linguagem_de_programa%C3%A7%C3%A3o)#Tipos_de_dados)
```ruby
puts nacionalidade.class
```

#### Obter uma entrada/input [gets.chomp]
```ruby
puts 'Informe uma entrada numerica:'
entrada = gets.chomp
puts entrada.class
```

#### Comentários
```ruby
puts 'Comentário simples - Única linha' 
# Comentário simples
# É possível utilizar o atalho CTRL + ;

puts 'Comentário de multiplas linhas' 
=begin
Comentário de multiplas linhas
(=
=end
```

---

#### Conversão de tipos
```ruby
puts 'Informe uma entrada numerica:'
numero = gets.chomp.to_i
puts numero.class
```

Você pode converter diferentes tipos em Ruby usando os métodos “to”:
- to_s converte coisas para strings
- to_i converte coisas para integers (números)
- to_a converte coisas para arrays
- to_f converte coisas para float

#### Operadores de comparação
```ruby
10 > 11 # maior que
10 < 11 # Menor que
10 >= 11 # Maior ou igual
10 <= 11 # Menor ou igual
10 != 11 # Diferente
10 == 11 # Igual
10.eql?(11) # Igual
```
---
#### Métodos
```ruby
def hello (nome)
    "Hello " + nome
end

puts hello("QA")
```
---
#### Loops
Times
```ruby
3.times do
    puts 'Oi (='
end
```

While
```ruby
contagemRegressiva = 10;
while contagemRegressiva > 0 do
    puts contagemRegressiva
    contagemRegressiva -= 1
end

puts 'Feliz ano novo!'
```

For
```ruby
for i in 0..10 do
    puts i
end
```

```ruby
musicas = ['Vereda', 'Leve e suave']
for musica in musicas do
    puts musica
end
```

For each
```ruby
musicas = ['Vereda', 'Leve e suave']
musicas.each do |musica|
    puts musica
end
```

Upto
```ruby
0.upto(5) do |i|
    puts i
end
```

Downto
```ruby
5.downto(0) do |i|
    puts i
end
```
---
#### Hashs