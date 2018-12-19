ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = Rails.application.secrets.shopify_app_api_key
  config.secret = Rails.application.secrets.shopify_app_secret_key
  config.scope = "read_orders, read_products" # Consult this page for more scope options:
                                 # https://help.shopify.com/en/api/getting-started/authentication/oauth/scopes
  config.embedded_app = true
  config.after_authenticate_job = false
  config.session_repository = Shop
end
