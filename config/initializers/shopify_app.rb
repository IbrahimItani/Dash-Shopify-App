ShopifyApp.configure do |config|

  config.api_key = "ENV_API_KEY"
  config.secret = "ENV_SECRET"
  config.scope = "read_orders, read_products, read_content, write_content"
  config.embedded_app = true
end
