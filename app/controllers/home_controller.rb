class HomeController < ShopifyApp::AuthenticatedController
  def index
    @abandonedCheckouts = ShopifyAPI::AbandonedCheckout.find(:all)
  end
end
