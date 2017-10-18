![whenisbest logo](/rsz_whenisbest_-_logo.png)

## Purpose

This project focuses on developing a “Group Calendar” for people. It will involve automated scheduling to determine a time or day where most, if not all, of your friends/family/group members will be free and available. Determination of the “best” time will use a ranking feature that prioritizes for example the number of people able to attend, the importance of the event, etc. Users input their main schedules, which will not be visible to other users, into the application and events will be added or deleted to their schedules accordingly, based on what they sign up for. Whenisbest introduces a “group” feature. A user can be a part of multiple different groups and use the same schedule for all of them. 

### Proposed functionality:

- Importing calendars for a group of people that will auto-generate the best times for a group of people to meet.
- Will allow people to rank their types of current obligations (strict, flexible).
- Permits privacy, so nobody else will know exactly what you're up to.

## Audience
Anyone with a busy schedule; e.g., Organizations, members of a group project, friend groups, etc. 

## Languages
HTML, CSS (SASS), Javascript (CoffeeScript), Ruby on Rails 

## Goals (Fall 2017 Project)
- Guest feature (11/10)
    - Not requiring login but still be able to use (limited) functionality
    - Create a group code for each group member?
- Adding Priority Events (11/10)
    - The ability for newly created events to overtake events that are already on a user’s calendar
- More user-friendly interface (12/13)  
    - Stylize HTML/CSS for  “Manage Groups” page
    - Stylize HTML/CSS for  “Suggest group event” page
    - Enhance calendar (use different colors for different events, organize view of overlap events, etc.)
- Extensive Documentation (12/13)
    - Write back-end documentation
    - Finish front-end documentation
    - Update README
- Notifications (12/13) 
    - Alerting users when: A new event is created in the group, something changed in the group, reminders of important events (using priority), use emails, pop-ups, etc. 
- Extension of algorithm (11/10)
    -If no time slot is available for a group, the algorithm will factor in how many people are able to go

## Current Bugs
- Inability to sync project with Google Calendar because of an unresolved error

## Features Wanted in the Future
- A domain name
- Sync with Facebook events if possible? Or be able to automatically pull in events from the area
- ChatBox to be able to discuss
- Events: Event planner with optimal times to host event, Events sorted by certain factors (e.g. number of people available, etc.)

## Other repositories:

https://github.com/WhenIsBest/simple_calendar

In order to receive the most recent updates to the simple_calendar code, one should copy and paste the code from the files in hte simple_calendar repo (look at the most recent commits) into their own files. If you can find a way to just pull from the repo instead, please let us know since it has not been working thus far.

This repository was forked from an open source Ruby gem named "simple_calendar" on GitHub that provided us with our calendar functionality. Modifications were made to the gem in order to best fit the calendar into whenisbest.

## How to run whenisbest in your local server
Complete installation guidelines as well as contribution guidelines are in our [Wiki](https://github.com/WhenIsBest/whenisbest/wiki) page!

WhenIsBest is a project within RCOS (Rensselaer Center for Open Source) at Renssealer Polytechnic Institute.
