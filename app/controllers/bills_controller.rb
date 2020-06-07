class BillsController < ApplicationController

    before_action :set_bill, only: [:show, :edit, :update, :destroy]

    def index
        @bills = Bill.all
    end

    def new
        @bill = current_user.bills.build
       @bill.user_bills.build
    end

    def create
      
        @bill = current_user.bills.build(bill_params)
   
         if @bill.save
            redirect_to @bill 
         else
           render :new
         end
    end

    def show
     
    end

    def edit
     
    end

    def update
       
        if @bill 
             @bill.update(bill_params)
            if @bill.errors.any?
                render :edit
            else 
                redirect_to @bill
            end
           
            else
                render :edit 
        end
    end

    def destroy
        @bill.destroy
        redirect_to root_path
    end


    private
    def bill_params
        params.require(:bill).permit(:total, :company_name, :paid, :user_ids, user_bills_attributes: [:id, :bill_id, :user_id, :due_date])
    end

    def set_bill
        @bill = Bill.find_by_id(params[:id])
    end
end
