class CreateMomos < ActiveRecord::Migration[5.2]
  def change
    create_table :momos do |t|

      t.timestamps
    end
  end
end
