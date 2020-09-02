class StaticPagesController < ApplicationController
  def beer
    
  end
  
  def home
    @categories = Category.all
    @items = Item.all
  end


  def about_us
   # if current_user.admin?
    #else current_user.update_attribute :admin, true
     # redirect_to"/"
    #end
  end
  
  def contact_us
  end

  def faq
  end

  def sizing
  end
  
  def paid
    # redirect_to "/cart/clear"
  
    
    @order = Order.find_by(id: params[:id])
    @order.update_attribute(:status , "Paid by User: #{current_user.email}")
    #"Paid by User:#{current_user.id} #{current_user.name} #{current_user.surname}")
    
  end

  
  def category
    catName = params[:title]
    @items = Item.where("category like ? ", catName)
  end

#Admin controls
  def admin
    if current_user.admin?
    @users = User.all
    else
   redirect_to "/"
    end
  end
  
  def upgrade
   @user = User.find_by(id: params[:id])
   @user.update_attribute :admin, true
   redirect_to "/admin"
  end
  
  def downgrade
   @user = User.find_by(id: params[:id])
   @user.update_attribute :admin, false
   redirect_to "/admin"
  end

end
