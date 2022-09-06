Discourse::Application.routes.append do
    get '/paper_store/:id' => 'papers#index'
end