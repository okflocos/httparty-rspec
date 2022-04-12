describe 'fazer requisicao' do
    context 'para alterar dados com' do
        it 'put' do
            @body_put = {
            "name": "bruno batista 26",
            "last_name": "batista 26",
            "email": "brunotop25@gmail.com",
            "age": "28",
            "phone": "21984759575",
            "adress": "Rua dois",
            "state": "Minas Gerais",
            "city": "Belo Horizonte",

            }.to_json

            @requsicao_put = Contato.put('/contacts', body: @body_put)
            puts @requisicao_put
        end

        it 'patch' do
            @body_patch = {
                "id": 9,
            "name": "bruno batista 26",
            "last_name": "batista 26",
            "email": "brunotop30@gmail.com",
            }.to_json
           @requisicao_put = Contato.patch('/contatcs/9', body: @body_patch)
        end
    end
end
