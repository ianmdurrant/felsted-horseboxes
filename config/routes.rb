Rails.application.routes.draw do
  mount Spina::Engine => '/'

  Spina::Engine.routes.draw do
    resources :inquiries, path: 'contact-us'
    resources :articles, path: 'news'
    resources :projects, path: 'case-studies', only: [:index, :show]
  end
end
