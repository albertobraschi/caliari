# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_caliari_session',
  :secret      => '38b7400f24922b70f18e887920c177a5a89123bfc0c44e4c7a73aa88fe487faa25e3f286b8446397dec8d00a3a11493149c28a49df7cecf01ba0669483cd22bb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
