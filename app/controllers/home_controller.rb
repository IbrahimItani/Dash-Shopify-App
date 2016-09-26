class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @orders = ShopifyAPI::Order.find(:all, :params => {limit: 5, order: "total_price ASC"}).map(&:total_price)
    # @orders = ShopifyAPI::Order.order("total_price DESC")


  end

end
