Rails.application.routes.draw do

  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }

  root to: "home#dashboard"

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
