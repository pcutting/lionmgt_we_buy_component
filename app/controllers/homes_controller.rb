class HomesController < ApplicationController

  def index
    @prospect = Prospect.new
  end
  
  def create
    #raise params.to_yaml
    @prospect = Prospect.new(params[:prospect])
    @prospect.type_of_prospect = params[:choice] ||= "none"
    
    @prospect.ip = request.remote_ip
    @prospect.client_info = request.env['HTTP_USER_AGENT']
    @prospect.site_referrer = request.env['HTTP_REFERER']
  
    session[:name] = @prospect.first_name
    
    
    case @prospect.type_of_prospect
      when "sell"
        @prospect.sell = true
      when "buy"
        @prospect.buy = true 
      when "lend"
        @prospect.lend = true
      when "borrow"
        @prospect.borrow = true
      else 
        @prospect
      end
  
  
    if @prospect.save 
      flash[:notice] = "Thank you #{@prospect.first_name}, we will be contacting you within 24 to 48 hours."
      case @prospect.type_of_prospect
      when "sell"
        redirect_to sell_home_path(@prospect)
      when "buy"
        redirect_to buy_home_path(@prospect)
      when "lend"
        redirect_to lend_home_path(@prospect)
      when "borrow"
        redirect_to sell_home_path(@prospect)
      else 
        flash[:notice] = "Thank you for entering your information, some one from our office will be calling you within the next 48 hours.  If you want to contact us directly you may email us at phil@lionMGT.com"
        
        redirect_to root_path
      end
    else
        flash[:alert] = "There was an error in submitting your request, please check that the required fields are entered"
        respond root_path
    end
    
  end

  def sell
    @seller = Seller.new
  end
  
  def buy
    
  end
  
  def lend
    
  end
  
  def borrow
    
  end
  
  def thankyou_webuy
  
  end
  

end
