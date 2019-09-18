class AddColumnToUser < ActiveRecord::Migration[5.2]
  def change
  	add_column :users , :name , :string
  	add_column :users , :email , :string
  	add_column :users , :employee_id , :integer 
  	add_column :users , :mobile_no , :string
  end
end
