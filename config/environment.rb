# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Fathom::Application.initialize!

APPLICATION_DOMAIN = 'shanti.virginia.edu'
# Target e-mails for exception handling.
FATHOM_NO_REPLY_ADDRESS = 'admin@shanti.virginia.edu' #'shanticontact@collab.itc.virginia.edu'
FATHOM_CONTACT_ADDRESS = FATHOM_NO_REPLY_ADDRESS