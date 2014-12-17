class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :name
      t.string :biography
      t.string :image_url

      t.timestamps
    end
  end
end
