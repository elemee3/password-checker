Rails.application.routes.draw do
  root 'password#check'
  get '/check_password' => 'password#check'
  get '/check_again' => 'password#reset'
end
