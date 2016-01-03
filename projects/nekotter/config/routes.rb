Rails.application.routes.draw do
	get 'nekotter' => 'nekotter#index'
	get 'nekotter/new' => 'nekotter#new'
	post 'nekotter' => 'nekotter#create'
end
