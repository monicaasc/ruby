class Conta
    attr_accessor :saldo, :cpf

    def initialize(cpf)
        self.saldo = 0
        self.cpf = cpf
        
        puts "Olá cliente! Seja bem vindo ao banco xpto"
    end

    def deposita(valor)

        # Valida o tipo do valor e garante que o valor seja positivo
        if (valor.is_a? Numeric and valor > 0)
            self.saldo += valor
            puts "Valor de R$ #{valor} depositado com sucesso em conta.\nSaldo atual R$ #{self.saldo} \n"
        else
            puts "O valor deve ser numerico e maior que 0"
        end

    end

    def saque(valor)

        if valor.to_f <= self.saldo
            self.saldo -= valor
        else
            puts "POXA.. Valor maior que saldo disponível. :/"
            puts "Saldo disponível: #{self.saldo} \nValor solicitado: #{valor}"
        end

    rescue Exception => e
        puts "Entrada inválida: Não foi possível realizar Saque."
    end

end

conta = Conta.new(123)
conta.deposita(100.50)

conta.saque("teste") # exceção
conta.saque(1000000)