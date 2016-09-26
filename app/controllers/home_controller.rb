class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, :order => 'orders.subtotal_price DESC')

  end
end
