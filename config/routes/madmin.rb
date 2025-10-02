# Below are the routes for madmin
namespace :madmin do
  resources :posts
  root to: "dashboard#show"
end
