Rails.application.routes.draw do
  get 'csv_uploader/show'
 
  root 'csv_uploader#show'

  post 'csv/send_data' => 'csv_uploader#get_data'
  get 'csv/show' => 'csv_uploader#show'
  post 'csv/delete' => 'csv_uploader#delete_data'
  get 'csv/download' => 'csv_uploader#download'


# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
