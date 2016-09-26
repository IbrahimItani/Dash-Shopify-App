class HomeController < ShopifyApp::AuthenticatedController
  def index
    ShopifyAPI::ScriptTag.create({event: "onload", src: "https://ibrahimitani.com/dash-app.js";}) 
  end
end
