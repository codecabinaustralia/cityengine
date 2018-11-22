class CreateSites < ActiveRecord::Migration[5.2]
  def change
    create_table :sites do |t|
      t.string :title
      t.string :links_reference_id

      t.timestamps
    end
  end
end
