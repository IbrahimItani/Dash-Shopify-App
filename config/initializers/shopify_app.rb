ShopifyApp.configure do |config|

  config.api_key = "26d64dc112f5657968e26b4c8789ddf9"
  config.secret = "089cd4233dd3431c54fdc49e90d70b3a"
  config.redirect_url = "https://test-dash-app.herokuapp.com/auth/shopify/callback"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
end
