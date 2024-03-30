#!/bin/bash

# Update the system
sudo yum update -y

# Install Apache HTTP Server (httpd)
sudo yum install httpd -y

# Install Git
sudo yum install git -y


# Clone the repository
git clone https://github.com/TheModeler99/simple_practice_applications.git

# Copy the files inside the cloned folder to the desired location
sudo cp -r simple_practice_applications/ecommerce-app/server1/* /var/www/html/

# To get the current hostname address
echo "<center><p>Running the website from instance host: $(hostname -f)</p></center>" >> /var/www/html/index.html

# Start and enable the HTTP server
sudo systemctl start httpd
sudo systemctl enable httpd
