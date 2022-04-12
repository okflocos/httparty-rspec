describe 'Cadastrar' do
    def  login(field_email:'', field_password: '')
        @body = {
            session: {
                email: field_email,
                password: '123456',
            }
        }._json
        
        @login = Login.post('/sessions', body: @body)

    end

    
    context 'tarefas' do
        before { login('brunobatista66@gmail.com,'' '123456') }

        it 'com sucesso' do
            @header = {
                'Content-Type': 'application/json',
                Accept: 'application/vnd.taskmanagers.v2
                Authorization: @login.parsed_response['data']['attributes']['auth-token']
            }
            @body = {
                task: {
                    description: 'Descrição da tarefa 122',
                    deadline: '2020-08-21' 15:00:00,
                    done: true
                }
            }.to_ json

            @tarefas = Cadastrar.post('/tasks', body: @body, headers: @header)
            puts @tarefas
        end
    end
end
