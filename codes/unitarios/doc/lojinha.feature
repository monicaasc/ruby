Estória: Lojinha da Labsit
    Sendo um usuario com acesso
    Posso administrar os produtos
    Para que possa incluir novos produtos e gerenciar as quantidades

Cenário: Inclusao de novo produto
    Dado que tenho um novo produto para cadastrar na loja
    Quando faço o cadastro do produto e sua quantidade respectiva
    Então o produto deve ser adicionado na loja

Cenário: Inclusao de produto ja cadastrado
    Dado que tenho um produto já cadastrado na loja
    Quando tento cadastrar o produto e sua quantidade respectiva
    Então a mensagem deve ser apresentada "Produto já cadastrado"
    E produto não é adicionado novamente

Cenário: Incrementar quantidade de produto
    Dado que novos produtos chegaram no estoque
    Quando informo a quantidade dos novos produtos
    Então o total dos produtos devem ser incrementados
    