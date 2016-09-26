class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @orders = ShopifyAPI::Order.find(:all).order(total_price: :desc)
  end
end
