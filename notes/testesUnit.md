## Ruby - Testes unitários

#### Gemfile

Gem é o nome dado a um pacote do Ruby que oferecem funcionalidades a fim de resolver uma necessidade específica.

O Gemfile é um arquivo que descreve as dependências de gems do seu projeto. Quando executamos o comando ```bundle install``` as dependências serão instaladas no projeto com base no que constar no arquivo Gemfile.

Criando o arquivo Gemfile. Execute o comando:
```ruby
bundle init
```

Um arquivo Gemfile será criado. Altere as dependências no arquivo Gemfile:
```ruby
# frozen_string_literal: true

source "https://rubygems.org"

gem 'rspec'
```

Após editar o Gemfile execute o comando ```bundle install```, com isso as dependências serão instaladas.


Mas o que significa o _#frozen_string_literal: true_ ?
- Indica que os literais de sequência devem ser alocados uma vez na hora da análise e congelados.
Isso melhora o desempenho por não alocar na memória diversas vezes a mesma informação.
- É um diretiva do Ruby, deve ser indicada na primeira linha e é válida apenas para o arquivo em questão.

---

#### RSpec

- [Documentação RSpec](http://rspec.info/documentation/)


Inicialize a estrutura do RSpec:
```
rspec --init
```

Na pasta spec que serão criados os arquivos de testes. Por convenção todos os arquivos devem ter no final ```_spec.rb```, por exemplo, ```login_spec.rb```.

Para criar um teste utilizamos a sintaxe:
```ruby	
describe 'breve descrição' do

    it 'breve descrição do teste' do

        # código aqui
        # incluindo as asserções do teste
        expect(true).to.be.true

    end

end
```

OBS.: É necessário incluir asserções, para que efetivamente o comportamento seja validado. O Ruby possui diversos expects: [Confira na documentação](http://rspec.info/documentation/3.12/rspec-expectations/#built-in-matchers).

##### Before/after

O RSpec possibilita executar algum código antes ou depois dos testes.

```ruby
describe Lojinha do
    before(:all) do
        # ...
    end
  
    after (:all) do
        # ...
    end
end
```

Se você quiser executar esse código para cada teste, você pode usar ```:each```. Ao usar o ```:all``` o before/after será executado uma vez antes de todos os exemplos.

##### Executando os testes

Para executar os testes utilize o comando ```rspec``` no terminal estando no diretório dos testes.
Para executar um arquivo em específico, adicione ao comando o caminho desse arquivo.
```ruby
rspec spec\nomeArquivo_spec.rb
```


Para visualizar os passos sendo executados podemos utilizar o comando ```rspec --format documentation``` ou simplemente ```rspec -fd```.

##### Pular teste

É possível desativar um teste específico. Para isso basta alterar o ```it``` por ```xit```.

```ruby
xit "teste" do
    # ...
end
```

#### Importar

```ruby
require_relative '../nomeArquivo'
```

OBS.: Não é necessário informar a extensão do arquivo.

#### BDD
Quando desejamos adicionar os cenários com BDD, é necessário:
- Adicionar a Gem do cucumber ```gem 'cucumber'``` no arquivo Gemfile e instalar as dependências.
- Criar um diretório ```doc```, pois será nessa pasta que criaremos os arquivos de _feature_. Por padrão o nome dos arquivos terá o nome da funcionalidade, seguindo de ```.feature```. Por exemplo: ```login.feature```.

A estrutura do arquivo deve ser:
```
Estória: Um breve título para a estória
    Sendo ...
    Posso ...
    Para ...
    
Cenário:
    Dado ...
    Quando ...
    Então ...
    E ...
```

#### Relatório

Para criar um arquivo com o relatório da execução em HTML
```ruby
rspec --format html --out report.html
```

##### Formato Junit

Necessário adicionar a Gem
```ruby
gem 'rspec_junit_formatter'
```

Instalar a nova dependência adicionada (```bundle install```).


E por fim, executar o comando
```ruby
rspec --format RspecJunitFormatter --out report.xml
```