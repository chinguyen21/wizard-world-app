Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    # get "/wizards/new", to: "wizards#new"
    get "/wizards", to: "wizards#index"
    get "/wizards/:id", to: "wizards#show"
    post "/wizards", to: "wizards#create"
    patch "/wizards/:id", to: "wizards#edit"

    get "/houses", to: "houses#index"

    get "/wizhouses", to: "wiz_houses#index"
    get "/wizhouses/:id", to: "wiz_houses#show"
    post "wizhouses", to: "wiz_houses#create"
    delete "wizhouses/:id", to: "wiz_houses#delete"

    #check authorization routes
    post '/checkwizard', to: 'sessions#create'
    post '/checkhouse', to: 'sessions#createhouse'
    delete '/logout', to: 'sessions#destroy'

    get "/books", to: "books#index"
    get "/books/:id", to: "books#show"

    get "wizbooks", to: "wiz_books#index"
    get "wizbooks/:id", to: "wiz_books#show"
    post "wizbooks", to: "wiz_books#create"

    get "/wands", to: "wands#index"
    get "/wands/:id", to: "wands#show"

    get "wizwands", to: "wiz_wands#index"
    get "wizwands/:id", to: "wiz_wands#show"
    post "wizwands", to: "wiz_wands#create"
end
