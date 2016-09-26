class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    # @orders = ShopifyAPI::Order.find(:all)
    @orders = ShopifyAPI::Order.find(:all, :params => {limit: 5, order: "total_price"}).map(&:total_price)


  end

end
