# whenisbest

![whenisbest logo](/rsz_whenisbest_-_logo.png)

whenisbest is an RCOS project that started in the Fall of 2016 at RPI (Rensselaer Polytechnic Institute).
Contributors include: Erin Jordan, Helen Lei, Jon Harris, Shreya Patel, Zefanya Putri, Ying Guo

The goal of whenisbest is to facilitate group scheduling based on the members' (anonymous) schedules. It will involve automated scheduling to determine a time or day where most of your friends/family/group members will be free and available. Users input their main schedules into the application and events will be added or deleted to their schedules accordingly, based on what they sign up for.

Check out our project page on [rcos.io](rcos.io): [https://rcos.io/projects/whenisbest/whenisbest/profile](https://rcos.io/projects/whenisbest/whenisbest/profile) where you can see our proposal for the semester.

## Tools used and how to run the program

whenisbest uses [Ruby on rails](http://rubyonrails.org/) which includes HTML, CSS/SASS, JavaScript/CoffeeScript for the front-end.
We've used this ruby on rails [tutorial](http://guides.rubyonrails.org/getting_started.html) to get started. If you've never used ruby on rails before and would like to try out the whenisbest source code this tutorial should provide the how-tos for all the installations you need. 

Once you have ruby on rails set up, you should be able to start the server by running

```
$ bin/rails server
```
or for windows:

```
ruby bin\rails server
```
in your local repo folder and go to localhost:3000 on your webrowser to use whenisbest. If you want to edit the source code, you should be able to use just any code text editor.

You should be greeted by this page when you run whenisbest:
![screenshot 193](https://cloud.githubusercontent.com/assets/16448052/23838060/dfd5ca64-0767-11e7-8f8f-95b60c516a86.png) 

If you cannot see the front end for some reason, these instructions may work:

First check to see if your app/views/layouts/application.html.erb has this:
```
    <%= stylesheet_link_tag    'default', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'default', 'data-turbolinks-track': 'reload' %>
```
if so, change the lines to this:
```
    <%= stylesheet_link_tag    'application', media: 'all', 'data-turbolinks-track': 'reload' %>
    <%= javascript_include_tag 'application', 'data-turbolinks-track': 'reload' %>
```
If that still doesn't work, follow these instructions:

1. Go to the whenisbest directory and open Gemfile in a text editor.
1. Add "gem 'coffee-script-source', '1.8.0'" to Gemfile and save.
1. Open your terminal and navigate to the whenisbest directory
1. Type 'bundle update coffee-script-source' and press ENTER.
1. Close your terminal and open a new one.
1. Start the server. Source: http://stackoverflow.com/questions/28312460/object-doesnt-support-this-property-or-method-rails-windows-64bit

#### Calendar
Another github repo is used to create our calendar: [https://github.com/WhenIsBest/simple_calendar] (https://github.com/WhenIsBest/simple_calendar).
This repository was forked from an open source Ruby gem named "simple_calendar" on GitHub that provided us with our calendar functionality. Modifications were made to the gem in order to best fit the calendar into whenisbest.

So, in order to modify the calendar, changes are to made in the above calendar repo. Also, in order to receive the most recent updates to the simple_calendar code, you should copy and paste the code from the files in hte simple_calendar repo (look at the most recent commits) into their own files. If you can find a way to just pull from the repo instead, please let us know since it has not been working thus far.

**Note: whenisbest has only been tested on the Windows operating system. Our team members use Ruby version 2.2 OR 2.3 with Rails version 5.**

Here is a quick video demo we have for our presentation in the Fall 2016 semester:

[![whenisbest demo](https://cloud.githubusercontent.com/assets/16448052/23838214/9e9746ac-0769-11e7-8ef3-c571ab0feef3.png)](https://www.youtube.com/watch?v=io-i1woZy-0)
