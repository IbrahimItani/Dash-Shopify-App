class HomeController < ShopifyApp::AuthenticatedController
  def index
    @products = ShopifyAPI::Product.find(:all, params: { limit: 10 })
    @articles = ShopifyAPI::Articles.find(:all, params: {limit: 10})
  end
end
