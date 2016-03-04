# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rails_test_session',
  :secret      => 'eed792f464934fe93e215c7cd1ba5f37250a72b337f475392ae2cbb5230031541b89acca3f8324b3129e635e50d549352d35b462363478bd9bdc4003c7ed3b9a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
