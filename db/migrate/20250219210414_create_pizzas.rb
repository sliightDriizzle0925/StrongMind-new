class CreatePizzas < ActiveRecord::Migration[8.0]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :toppings
      t.string :string

      t.timestamps
    end
  end
end
