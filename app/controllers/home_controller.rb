class HomeController < ShopifyApp::AuthenticatedController
  def index
    ShopifyAPI::ScriptTag.create(:event => "onload", :src => "https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js")
  end
end
