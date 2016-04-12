Rails.application.routes.draw do

  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' }


  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
  root to: "home#dashboard"

end
