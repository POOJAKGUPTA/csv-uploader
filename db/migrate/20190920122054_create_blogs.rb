class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :business_nbame
      t.integer :gst_no

      t.timestamps
    end
  end
end
