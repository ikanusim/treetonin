# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_treetonin_session',
  :secret      => '0cbd917cbc261cdc92ddcf77c8c0513800c0a3662d9784b09f318d695c03b1555b0911403aea9142459637acca680072948d3bac9b2685dfa6bd18aa6bd54a7b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
