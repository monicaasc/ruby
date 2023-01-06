## Ruby OO - Orientado a Objetos

#### Classes
Uma classe possui atributos e métodos.

```ruby
class Pessoa
    def hello
        puts 'Hello World'
    end
end
```

#### Instanciando

```ruby
monica = Pessoa.new
```


---
#### Construtor

```ruby
class Humano
    attr_accessor :nome, :nacionalidade, :tempoDeCasa
    
    def initialize(nome, nacionalidade)
        self.tempoDeCasa = 0
        self.nome = nome
        self.nacionalidade = nacionalidade
    end

end

monica = Humano.new('monica', :BR)
puts monica.tempoDeCasa
```
Para compreender sobre as variáveis de instância (_attr_accessor_):
- [What is attr_accessor in Ruby?](https://www.rubyguides.com/2018/11/attr_accessor/)
- [Read This If You Want to Understand Instance Variables in Ruby](https://www.rubyguides.com/2019/07/ruby-instance-variables/)

---

#### Exceções

```ruby
num1 = 10
num2 = 0

begin
    resultado = num1 / num2
    puts resultado
rescue Exception => e
    puts "Não foi possível realizar a divisão"
    puts "Erro retornado: #{e.message}"
end
```

Adicionando a tratativa de exceção em um método
```ruby
def divisao(num1, num2)
    resultado = num1 / num2
rescue Exception => e
    puts "Não foi possível realizar a divisão"
    puts "Erro retornado: #{e.message}"
end

divisao(10,0)
```

---

#### Herança
```ruby
class Pessoa
    attr_accessor :email, :contato

    def initialize(email, contato)
        self.email = email
        self.contato = contato
    end
end

class PessoaFisica < Pessoa
    attr_accessor :nome, :cpf
    
    def initialize(email, contato, nome, cpf)
        super(email, contato)
        self.nome = nome
        self.cpf = cpf
    end
end

class PessoaJuridica < Pessoa
    attr_accessor :nomeFantasia, :cnpj

    def initialize(email, contato, nomeFantasia, cnpj)
        super(email, contato)
        self.nomeFantasia = nomeFantasia
        self.cnpj = cnpj
    end
end

monica = PessoaFisica.new('email', 'contato', 'Monica', 123)
puts "Mônica: #{monica.nome}. #{monica.cpf}, #{monica.contato}"

labsit = PessoaJuridica.new('email@empresa.com', 'contatoEmpresa', 'Labsit', 123123123)
puts "Labsit: #{labsit.nomeFantasia}. #{labsit.cnpj}, #{labsit.contato}"
```
Para compreender sobre herança: [Tutorial de Ruby do GURU-SP](https://guru-sp.github.io/tutorial_ruby/heranca.html)