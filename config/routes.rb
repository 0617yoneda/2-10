Rails.application.routes.draw do
  get 'todolists/new' #新規投稿画面
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "top" => "homes#top" #スタート画面
  post "todolists" => "todolists#create" #スタート画面へ移動
  get "todolists" => "todolists#index" #一覧画面
  get "todolists/:id" => "todolists#show", as:"todolist" #詳細画面
end