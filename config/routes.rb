Rails.application.routes.draw do
  resources :courses do
    resources :sections do
      resources :lessons
    end
  end
end
