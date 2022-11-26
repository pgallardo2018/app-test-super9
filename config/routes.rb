Rails.application.routes.draw do
  get 'download', to: 'clients#download'
  get 'preview', to: 'clients#preview'
  get 'clients/pdf/:id', to: 'clients#pdf', as: 'client_pdf'
  get 'clients/full', to: 'clients#full', as: 'clients_full'
  resources :clients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
