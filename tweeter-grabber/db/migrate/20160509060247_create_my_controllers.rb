class CreateMyControllers < ActiveRecord::Migration
  def change
    create_table :my_controllers do |t|

      t.timestamps null: false
    end
  end
end
