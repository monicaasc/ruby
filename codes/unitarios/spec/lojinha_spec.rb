require_relative '../../lojinha'

RSpec.describe LojinhaLabsit do

    context 'quando cadastro novo produto' do

        before(:all) do
            @loja = LojinhaLabsit.new
            @produto = 'camisa'
            @quant = 1
        end

        it 'entao produto é adicionado' do
            @loja.novoProduto(@produto, @quant)

            expect(@loja.produtos).to include(@produto)
        end

        it 'e quantidade do item é atualizada' do
            expect(@loja.produtos[@produto]).to eq(@quant)
        end

    end

    context 'quando tento cadastrar produto existente' do

        it 'entao nao permite adicionar novamente' do
            loja = LojinhaLabsit.new
            produto = 'camisa'
            loja.novoProduto(produto, 1)
            res = loja.novoProduto(produto, 1)

            expect(res).to eq('Produto já cadastrado')
        end

    end

end