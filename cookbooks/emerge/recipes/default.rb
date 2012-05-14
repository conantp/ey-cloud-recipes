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

if ['db_master', 'solo'].include?(node[:instance_role])

	# Unmask
	enable_package "dev-python/boto" do
		version "1.4a"
	end

	# Unmask
	enable_package "app-backup/duplicity" do
		version "0.6.17"
	end

	# Install the newly unmasked version
	package "net-ftp/lftp" do
		version "3.7.11"
	action :install
	end

	# Install the newly unmasked version
	package "app-backup/duplicity" do
		version "0.6.17"
	action :install
	end

	cron "integritive_cron" do 
    	day '*'
    	hour '2'
    	minute '0' 
    	user 'root' 
    	command "./db/script/integritive.sh" 
  end 
end


