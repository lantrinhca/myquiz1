class Expense < ActiveRecord::Base
	validates :dop, :presence => true
	validates :location, :presence => true
	validates :category, :presence => true
	validates :amount, :presence => true

	CATEGORIES = {
		'grocery' => 'grocery',
		'eat out' => 'eat_out',
	}
end
