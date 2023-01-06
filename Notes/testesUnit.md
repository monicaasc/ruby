## Ruby - Testes unitários

#### Gemfile

Gem é o nome dado a um pacote do Ruby que oferece funcionalidades a fim de resolver uma necessidade específica.

O Gemfile é um arquivo que descreve as dependências de gems do seu projeto. Quando executamos o comando ```bundle install``` as dependências serão instaladas com base no que contar no arquivo Gemfile.

Adicionando dependências no arquivo Gemfile:
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


Inicialize a estrutura do rspec:
```
rspec --init
```

[Documentação RSpec](http://rspec.info/documentation/)