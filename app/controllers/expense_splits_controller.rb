class ExpenseSplitsController < ApplicationController
  before_action :set_expense_split, only: [:show, :edit, :update, :destroy]

  # GET /expense_splits
  def index
    @expense_splits = ExpenseSplit.all
  end

  # GET /expense_splits/1
  def show
  end

  # GET /expense_splits/new
  def new
    @expense_split = ExpenseSplit.new
  end

  # GET /expense_splits/1/edit
  def edit
  end

  # POST /expense_splits
  def create
    @expense_split = ExpenseSplit.new(expense_split_params)

    if @expense_split.save
      redirect_to @expense_split, notice: 'Expense split was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /expense_splits/1
  def update
    if @expense_split.update(expense_split_params)
      redirect_to @expense_split, notice: 'Expense split was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /expense_splits/1
  def destroy
    @expense_split.destroy
    redirect_to expense_splits_url, notice: 'Expense split was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense_split
      @expense_split = ExpenseSplit.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def expense_split_params
      params.require(:expense_split).permit(:user_id, :expense_id, :amount_owe, :amount_pay, :completed)
    end
end
