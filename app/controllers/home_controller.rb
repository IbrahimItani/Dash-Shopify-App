class HomeController < ShopifyApp::AuthenticatedController
  def index
    @orders = ShopifyAPI::Order.find(:all, :order => "subtotal_price ASC")

  end
end
