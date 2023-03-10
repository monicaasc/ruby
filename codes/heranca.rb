class Conta
    attr_accessor :saldo, :titular

    def initialize(cpf)
        self.saldo = 0
        self.titular = cpf
    end

    def deposito(valor)
        self.saldo += valor
    end

    def saque(valor)
        self.saldo -= valor 
    end

end

class Poupanca < Conta
    
    def rendimento
        "Aqui seu dinheiro esta rendendo =D"
    end
end

class Corrente < Conta
    attr_accessor :pacoteServico

    def initialize(cpf, pacote)
        super(cpf)
        self.pacoteServico = pacote
    end

    def custoPacoteServico
        if self.pacoteServico.eql?("essencial")
            "Seu pacote #{self.pacoteServico} nao tem custo"
        else
            "Seu pacote #{self.pacoteServico} tem o custo de R$ 37,80 mensal"
        end  
    end
end