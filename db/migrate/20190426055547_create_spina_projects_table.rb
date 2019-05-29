class CreateSpinaProjectsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :spina_projects do |t|
      t.string :title
      t.string :slug
      t.text :description
      t.string :lat
      t.string :long
      t.string :duration
      t.text :testimonial
      t.string :testimonial_name
      t.datetime :completion_date
      t.references :image, foreign_key: { to_table: :spina_images }
      t.references :image_collection, foreign_key: { to_table: :spina_image_collections }
      t.integer :project_category_id
      t.timestamps
    end
  end
end
