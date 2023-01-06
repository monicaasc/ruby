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
class Pessoa
    attr_accessor :nome

    def hello
        puts 'Hello World'
    end
end

monica = Pessoa.new
```

Para compreender sobre as variáveis de instância:
- [What is attr_accessor in Ruby?](https://www.rubyguides.com/2018/11/attr_accessor/)
- [Read This If You Want to Understand Instance Variables in Ruby](https://www.rubyguides.com/2019/07/ruby-instance-variables/)

---