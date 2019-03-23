Rails.application.routes.draw do
  post 'find_or_create', to: 'zipcodes#find_or_create'
end
