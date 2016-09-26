class HomeController < ShopifyApp::AuthenticatedController
  def index
    @customers = ShopifyAPI::Customer.find(:all, params: { limit: 10 })
    @orders = ShopifyAPI::Order.find(:all, :params => {:customer_id => @customers.id, :order => "subtotal_price ASC" })

  end
end
