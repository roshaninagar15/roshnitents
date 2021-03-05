Rails.application.routes.draw do
  
get 'homes/awesome_wedding_destinations_in_india'

  get 'homes/classic_wedding'

  get 'homes/wedding'

  get 'homes/corporate_events'

  

  get 'homes/view_more'

  
  get 'homes/flower_decoration'

  get 'homes/light_decoration'

  get 'homes/catering'

  get 'homes/view_all'

  get 'homes/indian'

  get 'homes/simply_stunning'

  get 'homes/moroccan'



  get 'homes/other_great_themes'

  get 'homes/blog'

  get 'homes/abouts'

  get 'homes/services'


  get 'homes/destination_wedding'

 

  get 'homes/index'
  root to: "homes#index" 
  resources :coffee_roasts
  resources :comments
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
