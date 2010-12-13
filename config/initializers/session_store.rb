# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fathom_session',
  :secret      => '0f96ce7643fb4cbd8b4a6b0a36ccfd2a5e9cdda761d8ebee9894402357c865271bb92c916d26352375b8033290821c494a37a8342211f5f27949881f7d6712b4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
