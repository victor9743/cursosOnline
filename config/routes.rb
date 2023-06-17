Rails.application.routes.draw do
  resources :curso_pagamentos
  devise_for :admins
  devise_for :instrutors
  devise_for :alunos
  resources :compra_cursos
  resources :area_conhecimentos

  resources :cursos
  # post '/cursos', to: 'cursos#destroy'
  get 'cursos/remover/:id', to: 'cursos#destroy'

  root to: 'main#index' 
  get 'admins_dashboard/index'
  get 'instrutores_dashboard/index'
  post '/comprar_curso', to: 'alunos_dashboard#comprar_curso'
  get 'alunos_dashboard/index'


  # admins
  get '/cadastrar_aluno', to: 'admins_dashboard#new_aluno'
  get '/cadastrar_instrutor', to: 'admins_dashboard#new_instrutor'
  get '/cadastrar_admin', to: 'admins_dashboard#new_admin'
  post '/confirmar_pagamento', to: 'admins_dashboard#confirmar_pagamento'



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
