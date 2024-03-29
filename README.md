# BIM Projects App

## About
#### Version 0.0.1, early stages
[![Build Status](https://travis-ci.org/kmorin/bimprojects.png)](https://travis-ci.org/kmorin/bimprojects)

A rails 3.2 app that you can run either standalone or on a platform like heroku to keep track of your BIM projects, including team members and their contat info, Revit model repository (in progress), RFIs with attachments and comments for each project.

## Getting Started

### Requirements
- Ruby 1.9.3
- Rails 3.2

### Setting up the environment

1. Get ruby and rails
    `\curl -L https://get.rvm.io | bash -s stable`
    `source ~/.rvm/scripts/rvm`


2. Install ruby 1.9.3
    `rvm install 1.9.3`

3. Install rails 3.2
    `gem install rails`

4. Get Passenger/Nginx up and running (disregard warning about sudoers file)
   `rvmsudo gem install passenger`
    `rvmsudo passenger-install-nginx-module`

if you are running on Ubuntu server, you may need some more libraries to complete, so passenger will abort and you can then install:
    `sudo apt-get install libcurl4-openssl-dev`

Now, re-run `passenger-install..`

Answer '1' to install and compile Nginx

Enter the default path for directory "/opt/nginx"

Start nginx
    `sudo /opt/nginx/sbin/nginx`

5. Clone the project directory into your html folder of your webserver ie.) /opt/
    `git clone https://github.com/kmorin/bimprojects.git`

6. Edit your nginx.conf file to add the following:
````
  server {

  #allow for large model uploads
  client_max_body_size 10000M;
  ...

    location {
      root html/bimpmapp/public;   #set location of public folder in your app inside html dir
      passenger_enabled on;        #enable passenger on server
      rails_env development;       #set rails_env to development
    }
  }
````

7. Run
   `bundle install`

8. Initialize your database
    `rake db:schema:load`
-- if you are having troubles, you need to install a js runtime such as node

9. Restart Nginx to reload nginx.conf
    `sudo /opt/nginx/sbin/nginx -s stop`
    `sudo /opt/nginx/sbin/nginx`

10. Navigate your browser to your server and start getting to work.

