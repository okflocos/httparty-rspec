module Contato
    include httparty
    base_url CONFIG['url_padrao']
    format :json
    headers Accept: application/vnd.taskmanager.v2,
            'Content-Type': 'application/json'
    
end

#url será a base de contato
#o headers tera a opção de accept
#ficara em formato json