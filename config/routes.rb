Rails.application.routes.draw do
  get 'todolists/new' #新規投稿画面
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "top" => "homes#top" #スタート画面
  post "todolists" => "todolists#create" #詳細画面へ移動
  get "todolists" => "todolists#index" #一覧画面
  get "todolists/:id" => "todolists#show", as:"todolist" #詳細画面
  get "todolists/:id/edit" => "todolists#edit", as:"edit_todolist" #編集画面
  patch "todolists/:id" => "todolists#update", as:"update_todolist" #詳細画面へ移動
  delete "todolists/:id" => "todolists#destroy", as:"destroy_todolist" #詳細画面へ
end