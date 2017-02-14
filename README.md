# whenisbest

Make whenisgood, great again.

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
- GOAL 1 (February 17): Begin implementation of algorithm to automate scheduling for meetings/events
    - The basic implementation of the algorithm will allow users to host events and will provide that user with the best available time slots for the users in that group with regard to the event.
    - The more advanced implemenentation of the algorithm adds in the functionality of priorities that will allow posted events to replace events of lower priority when the algorithm is run. This helps when finding a time slot for mandatory events as opposed to events that can be missed by users.
    - The final piece will be to work on the front-end of the algorithm. This includes any sort of display of the best available time slots, whether it will be a list of calendars or just a list of times
- GOAL 2 (March 10): Readjust database schema for more effective database reads 
    - The current schema can be found in db/schema.rb. (The "events" table is not used)
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

This repository was forked from an open source Ruby gem named "simple_calendar" on GitHub that provided us with our calendar functionality. Modifications were made to the gem in order to best fit the calendar into whenisbest.


WhenIsBest is a project within RCOS (Rensselaer Center for Open Source) at Renssealer Polytechnic Institute.
