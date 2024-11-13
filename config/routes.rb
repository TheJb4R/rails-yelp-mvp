Rails.application.routes.draw do

  resources :restaurants do
    resources :reviews, only: [:new, :create]

    # Additional routes that relate to restaurants

    # collection do
    #   # "Custom index"
    #   # /restaurants/whatever_word_you_say
    #   get :top
    # end

    # member do
    #   # "Custom show"
    #   # /restaurants/:id/whatever_word_you_say
    #   get :chef
    # end
  end

  resources :reviews, only: :destroy

  # get "restaurants/top", to: "restaurants#top"
  # get "restaurants/:id/chef", to: "restaurants#chef"

end
