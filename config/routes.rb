Rails.application.routes.draw do
root :to => 'courses#index'

  resources :courses do
    resources :sections
  end

   resources :sections do
     resources :lessons
   end
 end





#   resources :courses do
#     resources :sections do
#       resources :lessons
#     end
#   end
# end
