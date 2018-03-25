## TechnologyAdvice Customized Setup

* Install VirualBox: https://www.virtualbox.org/wiki/Downloads  
* Install Vagrant: https://www.vagrantup.com/downloads.html  
* Install Vagrant Plug-in for NFS:  `# vagrant plugin install vagrant-bindfs`  
* Install the Homestead Vagrant box:  `# vagrant box add laravel/homestead`  
  * Choose the option for virtualbox  
* Clone this repo (replace `~/Projects` with what you use on your local ):   
`# git clone git@github.com:TechnologyAdvice/homestead.git ~/Projects/homestead`

* Setup Composer: https://getcomposer.org/download/  
  * Run the 4 commands listed at the above URL to download/install composer
  * To run composer globally, move it to your PATH directory:  
    `# mv composer.phar /usr/local/bin/composer`
* Setup Laravel Installer: 
  * Install using Composer: `# composer global require "laravel/installer"`
  * Add the following to your $PATH environment: `$HOME/.composer/vendor/bin`
  * Instructions for creating a new Laravel Microservice: https://github.com/TechnologyAdvice/homestead/wiki/Create-New-Laravel-Microservice
    * Update this README if you create a new Laravel Microservice!
* Setup Existing Laravel Microservices:
    * **NOTE:** The folder `~/Laravel` must exist on your local computer to work with our homestead settings. If it does not exist, create it: `# mkdir ~/Laravel`
    * Clone Calls Microservice:  
    `# git clone git@github.com:TechnologyAdvice/ms-calls.git ~/Laravel/ms-calls`
    * Clone Data Checks Microservice:  
    `# git clone git@github.com:TechnologyAdvice/ms-data-checks.git ~/Laravel/ms-data-checks`
    * Clone Emails Microservice:  
    `# git clone git@github.com:TechnologyAdvice/ms-emails.git ~/Laravel/ms-emails`
    * Clone Five9 Microservice:  
    `# git clone git@github.com:TechnologyAdvice/ms-five9.git ~/Laravel/ms-five9`
    * Clone Lists Microservice:  
    `# git clone git@github.com:TechnologyAdvice/ms-lists.git ~/Laravel/ms-lists`
    * Clone Standardized & Dependent Custom Questions & Answers Microservice:  
    `# git clone git@github.com:TechnologyAdvice/ms-sdcqas.git ~/Laravel/ms-sdcqas`
    * Edit your `/etc/hosts` file
    ```
    192.168.10.10 calls.local-ms.taplatform.net
    192.168.10.10 data-checks.local-ms.taplatform.net
    192.168.10.10 emails.local-ms.taplatform.net
    192.168.10.10 five9.local-ms.taplatform.net
    192.168.10.10 lists.local-ms.taplatform.net
    192.168.10.10 sdcqas.local-ms.taplatform.net
    ```
* Run Microservices Locally: `# cd ~/Projects/homestead && vagrant up`
    * Now visit Microservices at URLs listed in `/etc/hosts` such as http://lists.local-ms.taplatform.net
    

## About

Laravel Homestead is an official, pre-packaged Vagrant box that provides you a wonderful development environment without requiring you to install PHP, a web server, and any other server software on your local machine. No more worrying about messing up your operating system! Vagrant boxes are completely disposable. If something goes wrong, you can destroy and re-create the box in minutes!

Homestead runs on any Windows, Mac, or Linux system, and includes the Nginx web server, PHP 7.2, MySQL, Postgres, Redis, Memcached, Node, and all of the other goodies you need to develop amazing Laravel applications.

Official documentation [is located here](https://laravel.com/docs/homestead).
