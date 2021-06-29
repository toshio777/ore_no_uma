Rails.application.routes.draw do
  # namespaceを利用することで、 /api/v1/each_api 形式のrouting設定を行う
  namespace :api, format: 'json' do
    namespace :v1 do
      resources :horses
    end
  end
  