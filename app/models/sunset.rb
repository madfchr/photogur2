class Sunset < ActiveRecord::Base
  def change
    create_table :sunsets do |t|
      t.string :title
      t.string :city
      t.string :url

      t.timestamps null: false
    end
  end
end
