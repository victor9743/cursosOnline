Rails.application.routes.draw do
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
  get 'alunos_dashboard/index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
