class ExpensesController < ApplicationController
	def index
		@expenses = Expense.all.order("dop")
	end

	def create
		@expense = Expense.create(expense_params)
  	if @expense.valid?
    	redirect_to root_path
  	else
    	render :new, :status => :unprocessable_entity
  	end

	end

	def new
		@expense = Expense.new
	end

	def edit

	end

	def destroy
		@expense = Expense.find(params[:id])
		@expense.destroy
		redirect_to root_path
	end

	private

	def expense_params
		params.required(:expense).permit(:dop, :location, :category, :amount, :comment)
	end
end
