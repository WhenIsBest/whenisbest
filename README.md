# whenisbest

Make whenisgood, great again.

### Try It Out!
- Look up 'RailsInstaller' on your favorite search engine and use it to download the Ruby on Rails framework. 
- After successfully installing Ruby On Rails, clone this repository to your local drive (using git clone in your Command Prompt or Terminal).
- Navigate into the folder created for the repo (using the cd (enter folder name) command)
- Type 'ruby bin/rails server' or 'rails server' into the Command Prompt and press Enter (a lot of output should eventually be printed afterwards)
- If the last line of output begins with 'Completed 200 OK', then it is working
- Go to your browser and enter 'localhost:3000' into the search bar.
- If you don't see an error, then you've made it! Welcome to whenisbest! :)

### Purpose
This project focuses on developing a “Group Calendar” for people. It will involve automated scheduling to determine a time or day where most of your friends/family/group members will be free and available. Users input their main schedules into the application and events will be added or deleted to their schedules accordingly, based on what they sign up for. We will also make groups and chat boxes accordingly. 

### Proposed functionality:
- Importing calendars for a group of people that will auto-generate the best times for a group of people to meet.
- Will allow people to rank their types of current obligations (strict, flexible).
- Permits privacy, so nobody else will know exactly what you're up to.

### Audience
Anyone with a busy schedule; e.g., Organizations, members of a group project, friend groups, etc. 

### Languages
HTML, CSS (SASS), Javascript (CoffeeScript), Ruby on Rails 

### Goals
- GOAL 1 (February 17): Readjust database schema for more effective database reads 
    - The current schema can be found in db/schema.rb. (The "events" table is not used)
- GOAL 2 (March 10): Begin implementation of algorithm to automate scheduling for meetings/events
    - The basic implementation of the algorithm will allow users to host events and will provide that user with the best available time slots for the users in that group with regard to the event.
    - The more advanced implementation of the algorithm adds in the functionality of priorities that will allow posted events to replace events of lower priority when the algorithm is run. This helps when finding a time slot for mandatory events as opposed to events that can be missed by users.
    - The final piece will be to work on the front-end of the algorithm. This includes any sort of display of the best available time slots, whether it will be a list of calendars or just a list of times
- GOAL 3 (March 24): Create a better display of the group manager page.
- GOAL 4 (April 1): Add the ability for users to log out
- GOAL 5 (April 7): Automate the assignment of a time zone when a user signs up
- GOAL 6 (April 28): Add “Forgot Password?” functionality
- GOAL 7 (April 28): Logo design
- GOAL 8 (April 28): The "Do Not Disturb" tool: Adding the ability to have a user set times for when they do not wish to have events

### Current Bugs
- Inability to sync project with Google Calendar because of an unresolved error

### Features Wanted in the Future
- A domain name
- Sync with Facebook events if possible? Or be able to automatically pull in events from the area
- ChatBox to be able to discuss
- Events: Event planner with optimal times to host event, Events sorted by certain factors (e.g. number of people available, etc.)

### Other repositories:

https://github.com/WhenIsBest/simple_calendar

In order to receive the most recent updates to the simple_calendar code, one should copy and paste the code from the files in hte simple_calendar repo (look at the most recent commits) into their own files. If you can find a way to just pull from the repo instead, please let us know since it has not been working thus far.

This repository was forked from an open source Ruby gem named "simple_calendar" on GitHub that provided us with our calendar functionality. Modifications were made to the gem in order to best fit the calendar into whenisbest.

### Notes:
If you cannot see the front end, these instructions may work:
    1. Go to the whenisbest directory and open Gemfile in a text editor.
    2. Add "gem 'coffee-script-source', '1.8.0'" to Gemfile and save.
    3. Open your terminal and navigate to the whenisbest directory
    4. Type 'bundle update coffee-script-source' and press ENTER.
    5. Close your terminal and open a new one.
    6. Start the server.
Source: http://stackoverflow.com/questions/28312460/object-doesnt-support-this-property-or-method-rails-windows-64bit

WhenIsBest is a project within RCOS (Rensselaer Center for Open Source) at Renssealer Polytechnic Institute.
