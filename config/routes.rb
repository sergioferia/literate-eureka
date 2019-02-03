Rails.application.routes.draw do
  get '/index' => 'index#index', :as => 'index_index'
  get '/search' => 'index#search', :as => 'search_page'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
