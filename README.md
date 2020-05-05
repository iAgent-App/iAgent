 # iAgent
 
## Overview

### Description
A "LinkedIn for athletes", this app allows athletes to connect with prospective schools/teams/agents and vice versa. Users are able to showcase their abilities and stats in order to make useful connections.  

### App Evaluation
- **Category:** Social Networking / Sports / Position Finder
- **Mobile:** Is initially being built as a mobile app for I-phone users. Eventually it could be built for Andriod users as well as for other devices (mobile or otherwise). 
- **Story:** Allows user to create profiles to connect with others in the world of sports. The app functions similar to a personal agent to help user's build their network for opportunities.
- **Market:** Athletes who want to play at the next level, whether it be collegiately or professionally. Organizations, schools, coaches and scouts would all be able to utilize this app to expand the athletes' network.
- **Habit:** Could be used as often as the user has something to highlight, or as often as they want to network with others.
- **Scope:** Starting with allowing the user to create a profile that markets themself to other users. Eventually we could implement the feed. In the future it might be beneficial if this is a one--stop app for teams as well (maybe implmenting a team version that allows schedules to be added so connections know when/where to see their connections play). Potential partnership with LinkedIn - could make "LinkedIn but for Athletes" our motto.
- **Selling point:** Easy way for athletes to expand their sports network.
- **Monetization:** Subscription where user gets addiitional functionality (i.e. Who has viewed their profile)

## Product Spec
1. User Stories (Required and Optional)
    Required Must-have Stories

   - [x] User can view their profile
   - [x] User can see their connections
   - [x] User can view their stats
   - [x] User can add a stat
   - [ ] User can view their highlights
   - [ ] User can add a highlight
   - [x] User can search for organizations
   - [x] User can login
   - [x] User can logout
   - [x] User can create a profile (either athlete, coach, or org)
   - [x] User can chat with other users
   - [ ] User can add a profile picture
   - [x] User can switch between tabs
   - [ ] User can view all of their highlights

    Optional Nice-to-have Stories
    - [ ] User can search/filter their highlights by keyword
    - [ ] User can search for jobs
    - [ ] User can see their suggested network
    - [ ] User can leave comment on another user’s highlights
    - [ ] User can see a feed of their connections' updates (including added highlights)
    - [ ] User is able to see a video that combines all of their highlights and has to option to post to the feed  
    - [ ] User can moodify select app features

2. Screen Archetypes
    **1st screen - Login/Sign Up & Create Profile**
    Associated user stories:
    - 8. User can login
    - 10. User can create a profile (either athlete, coach, scout, org) (if user is creating a profile there are multiple other screens they will see)
    
    **2nd screen - user profile**
    Associated user story: 
    - 1. User can view their profile
    - 2. User can see their connections
    - 4. User can add a stat
    - 5. User can view their highlights
    
    Associated optional user story:
    - User can search/filter their highlights by keyword
    - User can leave a comment on another user’s highlights
    - User can see their suggested network
    
    **3rd screen - organizations**
    Associated user story:
    - 7. User can search for organizations


    **4th screen - chat**
    Associated user story: 
    - 11. User can chat with other users

    **5th screen - settings**
    Associated user story: 
    - 12. User can add a profile picture
    
    Associated optional user story:
    - User can modify select app features

    **6th screen - stats**
    Associated user story: 
    - 3. User can view their stats

    **7th screen - All highlights**
    Associated user story: 
    - 14. User can view all of their highlights
    
    **8th screen - Add highlight**
    Associated user story: 
    - 6. User can add a highlight

    **9th screen (overlays) - Tabs view**
    Associated user stories: 
    - 9. User can logout
    - 13. User can switch between tabs

    **Optional screen - feed**
    Associated optional user stories:
    - User can see a feed of their connections' updates (including added highlights)
    - User is able to see a video that combines all of their highlights and has to option to post to the feed  
    
    **Optional screen - jobs**
    Associated optional user story:
    - User can search for jobs

    
3. Navigation
    Tab Navigation (Tab to Screen)

    - Main tab-bar (hamburger style):
    -- Profile
    -- Organizations
    -- Chat
    -- Highlights
    -- *Feed (optional)
    -- *Jobs (optional)
    - Other tab-bar (pull style):
    -- Stats

    Flow Navigation (Screen to Screen)

    - Login/Signup page (if user has no account) -> Create Profile page 
    - Login/Signup page (if user has an account) -> user's Profile Page
    - tab bar menu -> Profile tab
    -- Profile tab -> User's Profile Page
    -- Profile Page -> individual connection profile
    -- Profile Page -> Chat tab
    -- Profile Page -> individual connection chat
    -- Profile Page -> user's stats tab
    - tab bar menu -> Stats tab
    -- Stats tab -> user's stats page
    -- User stats page -> user can view their stats
    - tab bar menu -> Organizations tab
    -- Organizations tab -> Ogranizations Page
    -- Organizations Page -> individual school/org that user searched for
    - tab bar menu -> Chat tab
    -- Chat tab -> Chat Page
    -- Chat Page -> individual connection chat
    - tab bar menu -> Highlights tab
    -- Highlights tab -> All highlights page
    -- Highlights Page-> add highlight page
    -- Highlights Page->individual highlight details
    - *tab bar menu -> Feed tab (optional)
    - *tab bar menu -> Jobs tab (optional)

## Wireframes
<img src="https://imgur.com/JeKDBuO.jpg" width=800><br>
"Hamburger" Tab Bar View
<img src="https://imgur.com/2PMBvJL.jpg" width=400><br>

### [BONUS] Digital Wireframes & Mockups
Login/Signup & Create Account
<img src="https://imgur.com/INRbFTf.jpg" height=200>

Profile & Stats & Connection Profile & individual Chat
<img src="https://imgur.com/vaHCltA.jpg" height=200>

Organizations
<img src="https://imgur.com/kPoRqRM.jpg" height=200>

Chats
<img src="https://imgur.com/FRNH9mK.jpg" height=200>

## Schema
### Models
Users
<img src="https://imgur.com/EDYBFM2.jpg"
width=700 height=600>
<img src="https://imgur.com/2QlISVm.jpg">
Posts
<img src="https://imgur.com/Z3dlNl8.jpg">

### Networking
<img src="https://imgur.com/4uOSWuh.jpg"
width=700 height=600>
Code Snippets
* (Read/GET) Query user’s login information
*same for password, first name, last name, and email*
let loginQuery = PFQuery…
query.whereKey(“username”, equalTo: currentUser)
For (currentUser)
-- Find the username
----	If username is found
--------		print “Welcome!”
--------	    User sees profile page
----	else if username is not found
--------		print “No user exists with the given username. Please create an account.”

* (Create/POST) initial creation of user stat*
PFObject *newStat...
For (newStat)
--	if(succeeded)
---- Get the stat that the user has added 
---- (maybe have example/template stats for them?)
--	Else
---- Print “There was a problem adding your stat”...

* (Delete/DELETE) Delete Stats
Remove *oldStat…
-- if(succeeded)
---- print(“Stat removed successfully!”)
--	Else
---- print (“There was a problem removing your stat”)

* (Update/PUT) Update user info
let [newData] = [data].text
currentProfile["[data]"] = newData
Save data in background 
-- if (success) 
---- print("Changes saved")
-- else 
---- print("Error saving changes")

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://g.recordit.co/nqm0C6uew1.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />
