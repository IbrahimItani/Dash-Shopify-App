class HomeController < ShopifyApp::AuthenticatedController
  def index
    @abandonedCheckouts = ShopifyAPI::AbandonedCheckout.find(:all, params: { limit: 10 })
  end
end
