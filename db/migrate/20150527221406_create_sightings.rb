class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.references :species, null: false
      t.datetime :date_sighted
      t.decimal :latitude
      t.decimal :longitude
      t.references :region

      t.timestamps null: false
    end
  end
end
