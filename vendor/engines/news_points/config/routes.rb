::Refinery::Application.routes.draw do
  resources :news_points, :only => [:index, :show]

  scope(:path => 'refinery', :as => 'admin', :module => 'admin') do
    resources :news_points, :except => :show do
      collection do
        post :update_positions
      end
    end
  end
end
