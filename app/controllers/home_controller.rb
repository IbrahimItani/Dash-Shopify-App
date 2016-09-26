class HomeController < ShopifyApp::AuthenticatedController
  def index
    @articles = ShopifyAPI::Article.find(:all)
  end
end
