# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_prifleets_session',
  :secret      => '27062acca99fd045a7ec956faca04d708b0c30bf006924564fc66b332c7d19dc8815d2bb5a3049aaec5f895b5fa4a1da0cfa63fdad2c221328abbc10138e9108'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
