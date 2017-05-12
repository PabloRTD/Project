Expedia.setup do |config|
  config.cid = 501049 # your cid once you go live.
  config.api_key = '3p69a8mjluve9r5nsr96e1n8i6'
  config.shared_secret = '5fit2fmtblvbe'
  config.locale = 'en_US' # For Example 'de_DE'. Default is 'en_US'
  config.currency_code = 'USD' # For Example 'EUR'. Default is 'USD'
  config.minor_rev = 28 # between 4-28 as of Jan 2015. If not set, 4 is used by EAN.
  config.use_signature = true # An encoded signature is not required if ip whitelisting is used
  # optional configurations...
  config.timeout = 1000 # read timeout in sec
  config.open_timeout = 1000 # connection timeout in sec
end