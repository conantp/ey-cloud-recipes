#############################################
# Sample recipe for emerging packages
# 
# Search the Engine Yard portage tree to find
# out package versions to install
#
# EXAMPLE:
#
# Ensure local package index is synced with tree
# $ eix-sync
#
# Search for libxml2
# $ eix libxml2
#############################################

# Unmask version 2.7.6 of libxml2
 enable_package "dev-python/boto" do
   version "1.4a"
 end

# Install the newly unmasked version
 package "app-backup/duplicity" do
#   version "2.7.6"
   action :install
 end





