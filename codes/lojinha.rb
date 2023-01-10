class LojinhaLabsit
    attr_accessor :produtos

    def initialize
        self.produtos = Hash.new
    end

    def novoProduto (produto, quant)
        if self.produtos.key?(produto)
            "Produto já cadastrado"
        else
            self.produtos[produto] = quant
        end
    end

    def addProduto (produto, quant)
        self.produtos[produto] = self.produtos[produto] + quant
    rescue Exception => e
        "Produto não cadastrado"
    end

    def vendeProduto(produto, quantVendido)
       if self.produtos[produto] < quantVendido
        "Estoque menor que a quantidade desejada."
       else
        self.produtos[produto] = self.produtos[produto] - quantVendido
       end
    rescue Exception => e
        "Produto não cadastrado"
    end

    def listaProduto
        self.produtos.each do |produto, quant|
            valor = tipoProduto(produto.downcase)
            "Produto: #{produto} - Valor R$ #{valor} | Quant: #{quant}\n"
        end
    end

    def tipoProduto (produto)
        if produto.eql?('camisa') 
            49.90
        elsif produto.eql?('moletom')
            139.90
        elsif produto.eql?('caneca')
            20
        elsif produto.eql?('calça')
            100
        else
            50
        end
    end
end