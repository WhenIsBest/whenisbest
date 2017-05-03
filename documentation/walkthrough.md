# whenisbest walkthrough
This walkthrough is to document the different pages that currently exist in the whenisbest web app.
This includes explanations of what the pages are for and the existing known issues (as well as the github issue references). 

Table of contents:

1. [Welcome page](#welcome-page)
1. [Login page](#login-page)
1. [Sign-up page](#sign-up-page)
1. [Homepage](#homepage)
1. [New group page](#new-group-page)
1. [Group page](#group-page)
1. [Edit group page](#edit-group-page)
1. [Suggest group event page](#suggest-group-event-page)
1. [New event page](#new-event-page)
1. [Edit user settings page](#edit-user-settings-page)

## Welcome page
![welcome page](https://cloud.githubusercontent.com/assets/16448052/23838060/dfd5ca64-0767-11e7-8f8f-95b60c516a86.png)
(as of 03/18/17)

This is the first page you see when you go to localhost:3000 on your webbrowser. Currently users must have an account. Two buttons exist: You can either **login** (for existing users) or **sign-up** to create a new account.

Front-end code: app/views/onboarding/new.html.erb and app/assets/stylesheets/onboarding.css.

## Login page
![screenshot 195](https://cloud.githubusercontent.com/assets/16448052/23841864/be4165ba-0786-11e7-910e-db27c90b2364.png)
(as of 03/18/17)

Standard login page. To login, a user needs to know email and password. Has a link that sends to sign-up page in case the user clicked the wrong button. Page will direct to homepage after logging in. 

Front-end code: app/views/sessions/new.html.erb.

**Known bugs/issue(s)**:
* Page doesn't have stylized HTML and CSS code yet.
* When a user logs in with wrong email or password, the page doesn't do anything. So a user would have to refresh the page to re-enter their email and password.
* Don't have a "forgot password" link, where ideally we would send an email to the user to reset password. 

**Github open issues:** [#72](https://github.com/WhenIsBest/whenisbest/issues/72) [#22](https://github.com/WhenIsBest/whenisbest/issues/22)

## Sign-up page
![screenshot 196](https://cloud.githubusercontent.com/assets/16448052/23842794/465c7ff6-078d-11e7-8e2c-5f2ff3237890.png)
(as of 03/18/17)

To sign up a user would need first name, last name, a valid email address, password, and the timezone they would like their calendar to be in. The email address entered must have the character '@' or else a pop-up would show up asking the user to add the character in. If the user doesn't enter a password, the page will refresh to the same page, but no error message is given.

Front-end code: app/views/users/new/html.erb.

**Known bugs/issue(s)**:
* Page doesn't have stylized HTML and CSS code yet.
* A user is allowed to have the first name AND/OR the last name fields to sign up for an account, resulting in the '' (empty string) as their first and/or last name.
* Needs to have error message when password field is empty or have too many characters.
* Should verify user by email.
* Would be ideal if the user doesn't have to choose the timezone themselves.

**Github open issues:** [#73](https://github.com/WhenIsBest/whenisbest/issues/73) [#22](https://github.com/WhenIsBest/whenisbest/issues/22)

## Homepage
![screenshot 197](https://cloud.githubusercontent.com/assets/16448052/23875164/d1d1b480-080e-11e7-98f4-23b4a87fc206.png)
(as of 03/12/17)

Homepage for the user. Has a sidebar div and a calendar div. The sidebar displays the user's clickable groups (which will lead to group's page) and has buttons to create a new group and to manage all the groups. The calendar side of the page contains the calendar display, which shows the user's calendar and his/her events on it. The calendar currently only displays one week at a time; the default is the current week. A user can look at the previous week or the next week using the provided buttons. Each day on the calendar displays the fill 24 hours. There's also a button to add a new calendar event *for the user*. On the upper right on the header bar (which is common to all of the pages) that has the user settings button.

Front-end code: app/views/welcome/homepage.html.erb.

**Known bugs/issues(s)**:

**Github open issues:**

## New group page
![screenshot 201](https://cloud.githubusercontent.com/assets/16448052/24425685/0ebf489c-13d3-11e7-8dba-5d45551366cf.png)
(as of 03/18/17)

To a create a new group, a user would a need a name and a description. New members would also be added by using the add new members functionality. Right now, if a user tries to add an email address that doesn't exist in the database, no error message is given and the program will simply skip the email address. Future functionality would include sending an email invitaition if the new user email to add doesn't exist.

**Known bugs/issues(s)**:

**Github open issues:**

## Group page
![screenshot 202](https://cloud.githubusercontent.com/assets/16448052/24425690/12ada82c-13d3-11e7-9d25-71176c456811.png)
(as of 03/18/17)

This page shows the group calendar, which has group events. The events of each user in the group will not be displayed.

**Known bugs/issues(s)**:

**Github open issues:**

## Edit group page
![screenshot 203](https://cloud.githubusercontent.com/assets/16448052/24425695/16cc2078-13d3-11e7-8c39-d2f6854852cc.png)
(as of 03/18/17

A page update the information of a group. Can update name, description, members.

**Known bugs/issues(s)**:
* Right now there is little concept of a group admin, no user who has been added to a group will know that he/she has been added or removed

**Github open issues:**

## Suggest group event page
![screenshot 347](https://cloud.githubusercontent.com/assets/16448052/25684753/28c7334c-3031-11e7-8dc9-ad979fab10d3.png)
(as of 05/03/2017)

The suggest group event page allows a user to suggest an event to their group. A user can click the button "Get Time Slots!", which would perform an algorithm to find all the available times slots for the desired event (a pop up will display for the user to fill in the new event information). Available and suggested time slots will appear at the bottom of the page as buttons. Once one of the buttons is clicked, the calendar is updated with the new event in place. 

**Known bugs/issues(s)**:
* UI needs improvement, make everything fit in one page (don't have to scroll)

**Github open issues:**

## Group Manager Page
![screenshot 348](https://cloud.githubusercontent.com/assets/16448052/25685061/dff96980-3032-11e7-968c-e7ce93cef59b.png)
(as of 05/03/2017)

The group manager page serve as a place for a user to look at his/her groups. In this page a user can click or edit the desired group or remove himself/herself from the group. Each group displays name, description, and members

**Known bugs/issues(s)**:

**Github open issues:**

## New event page
![screenshot 205](https://cloud.githubusercontent.com/assets/16448052/24425779/5fc94d46-13d3-11e7-9e09-49ab9b004768.png)
(as of 03/18/17)

**Known bugs/issues(s)**:

**Github open issues:**

## Edit user settings page
![screenshot 206](https://cloud.githubusercontent.com/assets/16448052/24425782/62bf2ec6-13d3-11e7-9e39-029d6ec73b3c.png)
(as of 03/18/17)

**Known bugs/issues(s)**:
* Password won't actually update when trying to change it

**Github open issues:**

