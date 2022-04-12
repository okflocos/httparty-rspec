describe 'fazer uma requisição' do
    it 'post' do
        @body
        {
            "name": "bruno batista 26",
            "last_name": "batista 26",
            "email": "brunotop25@gmail.com",
            "age": "28",
            "phone": "21984759575",
            "adress": "Rua dois",    
            "state": "Minas Gerais",
            "city": "Belo Horizonte",
        }.to_json

        #forma simples do httparty
        #@headers = {
        #    "Accept": application/vnd.taskmanager.v2
        #    'Content-type': 'application/json'  
        #}

        #@request = HTTParty.post('https://api-de-tarefas.heroku.app.com/contacts', body: @body, headers: @headers)
        #puts request

        Contato.post('/contacts', body: @body)

    end
end