## Disclaimer
<b><i>This project should not be modified in any way and used anywhere else without my permission.</b></i>

If you use this project for phishing purposes after modifying the source code / or by any other means, remember that the original project has nothing to do with phishing or any other malicious purpose. Any loss of data or unauthorized access which happened because of such phishing kits would not be my responsibility as that is not my original code. Strict legal action would be taken if someone is found modifying it and using it for any unethical purpose.

# Online Banking System
A web based banking system with all essential features and security accompanied by a beautiful and simple website. The website is designed in accordance with google material design and resposive web design guidelines to ensure a seamless experience between devices.

A fictional name of "Dolphin Bank" has been used only for representative purposes.

## Built with
<b>HTML5, CSS, JavaScript</b> & <b>jQuery</b> used for front-end design.


<b>PHP7 & MySQL</b> used for back-end design.


<b>Oracle MySQL</b> has been used to create and host the database for the
internet banking website.


Other than the languages/tools mentioned above <b>no</b> other/external
libraries and/or web-page templates have been used, everything has been
coded from ground-up straight from scratch.

## How to build/use
Setup an environment which supports web development like <b>LAMP</b> on <b>Linux</b> systems OR install <b>WampServer/XAMPP</b> or anything similar on <b>Windows</b>.

Copy the folder [net-banking](https://github.com/zakee94/online-banking-system/tree/master/net-banking) or the files in it to the location of the localhost. For example "/var/www/html", the loaction of localhost in Ubuntu.

Import the [net_banking.sql](https://github.com/zakee94/online-banking-system/blob/master/net_banking.sql) database into your MySQL setup.

Edit the file [connect.php](https://github.com/zakee94/online-banking-system/blob/master/net-banking/connect.php) and give proper username and password of your MySQL setup.

Open a browser and test wether the setup works or not by visiting the home page. Type "localhost/home.php" as the URL in the browser to visit the home page.

All the passwords and the usernames of both the admin and the customer can be found in the database i.e. in the file [net_banking.sql](https://github.com/zakee94/online-banking-system/blob/master/net_banking.sql).

However some important usernames and passwords are provided below :
* Username of admin is "admin" & password is "password123".
* Username of most of the customers is their "first_name" & password is their "first_name" followed by "123".

Some useful links to help in proper setup :
* [Installing LAMP](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-14-04)
* [WampServer](http://www.wampserver.com/en/)
* [Importing database in MySQL](https://www.digitalocean.com/community/tutorials/how-to-import-and-export-databases-and-reset-a-root-password-in-mysql)

## Details about the project
An exhaustive list of features, documentation, design hierarchy, details about the web pages, database, design characterstics/features and a lot more can be found [here](https://drive.google.com/open?id=1Px2shjcmyLUv7-u5wp93HvKT_zvw-Pmk).

The ER Diagram can also be found on the link given above or can be viewed [here](https://drive.google.com/open?id=1Tn2fBR9IjLP8dlv6svrc4aEvryrYcI3G).

## Description of the various folders
- <b>/net-banking :</b> Contains the source code of the website
    - <b>/net-banking/images :</b> Contains various images and icon vectors used as resources in the website
    - <b>/net-banking/fonts :</b> Contains various fonts(.ttf files) used in the website

## Screenshots (more can be found [here](https://drive.google.com/open?id=1bLLNyEiVGoWgHDfOehGooYSAZUNtj85F))
![](https://drive.google.com/uc?id=1XAImOcjlkVbGv3OVcLtfZJKIG4jIh9D_)

![](https://drive.google.com/uc?id=1wPAlZ-QhjwOJMP4L7Bi7kEGbmcLS3Qaa)

## Authors
* [zakee94](https://github.com/zakee94/)
