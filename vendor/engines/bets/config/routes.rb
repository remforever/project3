::Refinery::Application.routes.draw do
  resources :bets, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :bets, :except => :show do
      collection do
        get :settings
        get :add_team
        get :search_match
        post :update_positions
      end


    end
    resources :countries
    resources :football_matches
    resources :leagues
  end
end
