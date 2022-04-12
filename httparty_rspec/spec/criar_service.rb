module Criar
    include HTTParty
    #url base de contato
    base_url 'https://api-de-tarefas.heroku.app.com'
    #opçoes do meu service
    format :json
end
