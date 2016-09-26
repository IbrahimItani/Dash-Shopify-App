class HomeController < ShopifyApp::AuthenticatedController
  def index
    ShopifyAPI::ScriptTag.create({event: "onload", src: "https://test-dash-app.herokuapp.com/assets/javascripts/dash-app.js";}) 
  end
end
