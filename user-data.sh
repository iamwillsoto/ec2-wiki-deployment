#!/bin/bash
# Update Packages
apt-get update -y

# Install Apache, PHP, wget, tar
apt-get install -y apache2 php wget tar

# Start Apache
systemctl enable apache2
systemctl start apache2

# Download DokuWiki
wget https://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz -O /tmp/dokuwiki.tgz

# Extract into Apache's web folder
tar xzf /tmp/dokuwiki.tgz -C /var/www/html --strip-components=1

# Fix permissions (so Apache owns the files)
chown -R www-data:www-data /var/www/html

# Create wiki pages
mkdir -p /var/www/html/data/pages
echo "Welcome to the Pixel Learning Co. Wiki!" > /var/www/html/data/pages/home.txt
echo "IAM: users, groups, roles. EC2: instances & security groups. S3: buckets & block public access." > /var/www/html/data/pages/aws_notes.txt
echo "ls = list files; cd = change directory; cat file = show contents; tail -f file = follow logs" > /var/www/html/data/pages/linux_commands.txt

# Restart Apache
systemctl restart apache2

