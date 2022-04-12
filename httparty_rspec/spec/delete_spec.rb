describe 'fazer requisicao' do
    it 'delete' do
        #HTTParty.delete('https://api-de-tarefas.heroku.app.com/contacts/12')
        Contato.delete('/contacts/')
    end
end