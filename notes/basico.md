## Ruby Básico

Ruby é uma linguagem orientada a objetos. Tudo o que você manipula é um objeto. 

#### Impressão de informações [print/p/puts]
```ruby
puts 'Teste'
puts 1,2,3 # puts - Adiciona uma quebra de linha ao fim.
p "4" # p - Método que mostra uma representação legível por humanos do objeto, normalmente utilizado para Debugging. Note que apresenta todos os caracteres.
print 5,6,7 # print - Não adiciona uma quebra de linha no fim.
```

#### Ruby é uma linguagem dinamicamente tipada, não sendo necessário especificar o tipo
```ruby
nacionalidade = 'Brasileira'
a, b, c = 1, 2, 3
```

#### Verificação de tipo | [Veja mais sobre tipos](https://pt.wikipedia.org/wiki/Ruby_(linguagem_de_programa%C3%A7%C3%A3o)#Tipos_de_dados)
```ruby
puts nacionalidade.class
```

#### Obter uma entrada/input [gets.chomp]
```ruby
puts 'Informe uma entrada numérica:'
entrada = gets.chomp
puts entrada.class
```

#### Comentários
```ruby
puts 'Comentário simples - Única linha' 
# Comentário simples
# É possível utilizar o atalho CTRL + ;

puts 'Comentário de múltiplas linhas' 
=begin
Comentário de múltiplas linhas
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
- to_json converte para JSON

#### Array
```ruby
nomes = ['Monica', 'Arthur', 'Lynnick']
puts nomes[0] # acessar um item específico
```

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
OBS.: Podemos omitir o return. O valor da última expressão avaliada será retornado por um método Ruby.

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

=begin
    OBS.: 0..10 é um objeto do tipo Range, que gera um range de números. 
    Ao utilizar 2 pontos (..) ambos os números são inclusive, ao utilizar 3 pontos (...) não inclui o valor final.
=end

```


```ruby
musicas = ['Vereda', 'Leve e suave'] # Array
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
Semelhante ao Array, porém no Array o índice é um número já no Hash temos Chave -> Valor.

Um Hash tem chaves únicas.

```ruby
pessoa = Hash[nome: 'Monica', idade: 30, casada: true]
puts pessoa 

puts pessoa[:nome] # obter uma chave especifica
pessoa[:signo] = 'câncer' # Adicionando nova chave
puts pessoa
```
ou
```ruby
pessoa = {'nome' => 'Monica', 'idade' => 30, 'casada' => true, 'signo' => :cancer}
puts pessoa
```

Obtendo informações:
```ruby
pessoa = {nome: 'Monica', idade: 30, casada: true}

pessoa.keys # Obtém todas as chaves
pessoa.values # Obtém todos os valores
pessoa.length # Obtém o tamanho do hash
```

```ruby
pessoa = {nome: 'Monica', idade: 30, casada: true}

pessoa.each do |chave, valor|
    puts "#{chave} -> #{valor}"
end
```

---

### Extra

#### Símbolos
Quando você coloca dois pontos à frente de uma simples palavra, você obtém um Symbol (símbolo). Símbolos são mais baratos que strings (em termos de custo de memória). Se você usar uma palavra várias e várias vezes no seu programa, troque por um símbolo. Ao invés de ter milhares de cópias desta palavra na memória, o computador irá armazenar o símbolo apenas uma vez.

```ruby
:esplendido
```

#### Interpolação de string
```ruby
nome = 'Monica'
puts "Olá #{nome}"
```

#### If/else

```ruby
condicional1 = false
condicional2 = true

if condicional1 
    puts 'entrou no if'
elsif condicional2
    puts 'entrou no elseif'
else
    puts 'entrou no else'
end
```

#### Array
Trabalhando com [Array](https://ruby-doc.org/core-2.5.0/Array.html).

```ruby
musicas = ['Vereda', 'Deixa ser']
# puts musicas

musicas.push('O anjo mais velho') # Adiciona no final do array
musicas << 'Leve e suave' # Adiciona no final do array
# puts musicas

musicas.pop # Remove última posição
# puts musicas

musicas.delete('Vereda') # Remove item correspondente
musicas.delete_at(0) # Remove item do índice especificado
puts musicas
```