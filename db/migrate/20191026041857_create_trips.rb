class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
    	t.string :destination
    	t.text :description
    	t.text :eats
    	t.text :blog
        t.timestamps
    end
  end
end
