class ExpensesController < ApplicationController
  before_action :set_expense, only: [:show, :edit, :update, :destroy]

  def index
    @expenses = Expense.all
  end


  def show
  @expense = Expense.find(params[:id])
  end


  def new
    @expense = Expense.new(trip_id: params[:trip_id])
  end


  def edit
  @expense = Expense.find(params[:id])
  end

  def create
    @expense = Expense.new(expense_params)
    respond_to do |format|
      if @expense.save
        # format.html { redirect_to @expense, notice: 'Expense was successfully created.' }
        format.html { redirect_to trip_path(@expense.trip)}
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @expense = Expense.find(params[:id])
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to @expense, notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to expenses_url, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_expense
      @expense = Expense.find(params[:id])
    end

    def expense_params
      params.require(:expense).permit(:name, :description, :amount, :usertrip_id, :expense_image, :trip_id, :datepicker)
    end
end
