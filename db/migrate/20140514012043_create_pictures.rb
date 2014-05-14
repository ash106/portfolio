class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.string :title
      t.references :project, index: true

      t.timestamps
    end
  end
end
