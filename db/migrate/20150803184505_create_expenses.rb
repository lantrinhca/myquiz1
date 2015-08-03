class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
  		t.date :date_of_purchase
  		t.string :location
  		t.string :category
  		t.double	:amount
  		t.text :comment
      t.timestamps
    end
  end
end
