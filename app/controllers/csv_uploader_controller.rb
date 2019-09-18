class CsvUploaderController < ApplicationController

def index
end

def get_data
	User.import(params[:user][:file])
	flash[:notice] = "Users uploaded successfully"
	redirect_to csv_show_path
end

def show 
	@data = User.all
end

def delete_data
	delete_data = params[:delete_users][:data].split(" ")
	User.where(id: delete_data).destroy_all
	redirect_to csv_show_path
end

def download
	@user = User.all
	respond_to do |format|
		format.html
		format.csv { send_data @user.to_csv }
	end
end

end
