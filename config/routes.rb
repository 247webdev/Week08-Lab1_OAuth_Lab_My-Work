Rails.application.routes.draw do
  get 'auth/provider/callback', to: 'sessions#create'  #provider is more general but possible to use twitter
  get 'auth/failure', to: redirect('/')  # this won't work in a development environment since omniauth just raises an exception in development
  delete 'signout', to: 'sessions#destroy', as: 'signout'


#  get '/auth/:provider/callback', to: 'sessions#create'    is the :provider a way of capturing the OAuth provider like :provider becomes Twitter, GH, FB, Google? also the Rails Cast used match vs get, why
end
