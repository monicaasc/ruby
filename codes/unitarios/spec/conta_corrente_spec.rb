require_relative '../../heranca'

RSpec.describe 'Conta' do
    context 'Conta poupanca' do

        before(:all) do
            @conta = Poupanca.new(123)
        end

        it 'Saldo zerado ao criar conta' do
            expect(@conta.saldo).to eq(0)
        end

        it 'Retorna mensagem de rendimento' do
            res = @conta.rendimento
            expect(res).to eq("Aqui seu dinheiro esta rendendo =D")
        end

    end

    context 'Conta corrente' do

        before(:all) do
            @conta = Corrente.new(123, 'essencial')
        end
        
        it 'Saldo zerado ao criar conta' do
            expect(@conta.saldo).to eq(0)
        end

        it 'Retorna informação do Servico Essencial' do
            pacote = 'essencial'
            
            res = "Seu pacote #{pacote} nao tem custo"
            expect(@conta.custoPacoteServico).to eq(res)
        end

        it 'Retorna informação do Servico Premium' do
            pacote = 'premium'
            
            conta = Corrente.new(123, pacote)
            res = "Seu pacote #{pacote} tem o custo de R$ 37,80 mensal"
            expect(conta.custoPacoteServico).to eq(res)
        end

    end
end