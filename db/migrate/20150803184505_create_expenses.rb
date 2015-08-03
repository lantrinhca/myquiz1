class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
  		t.date :dop
  		t.string :location
  		t.string :category
  		t.decimal	:amount
  		t.text :comment
      t.timestamps
    end
  end
end
