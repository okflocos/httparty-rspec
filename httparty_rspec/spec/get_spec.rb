describe 'fazer uma requisição' do
    it 'get' do
        #senão fosse usado o modulo, o httparty chamaria o get da seguinte forma :
        #@primeira_opcao  httparty.get('https://api-de-tarefas.heroku.app.com/contacts/7')
        #puts @primeira_opcao

      @melhor_opcao = Contato.get('/contacts/7')
      puts @melhor_opcao

    end
end