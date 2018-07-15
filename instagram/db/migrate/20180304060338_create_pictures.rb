class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.string :title
      t.string :Author
      t.string :note
      t.date :published
      t.string :image

      t.timestamps
    end
  end
end
