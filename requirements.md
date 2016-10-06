# Project - Project Management tool
---

## Requirements for the Controller

### Assignment: PM Tool: Getting Started

We will get started by setting up the PM (Project Management) Tool project which we will work on for the rest of this bootcamp.

####Here is what you need to do:

* Setup empty Rails project (make sure it's version 4.2 or more)
* Make sure that the project uses postgres database
* Create controller "home" that handles home and static pages
* Create a page "About" which has information about the tool (anything for now).
* Add your photo and information in the about page (link to external photo of you for now)
* Create a navigation bar that applies to all pages. The navigation bar must include links to "home" and "about" pages
* Put all of your code on GitHub (or BitBucket)
* Submit the Github link.

## Requirements for the model

### Assignment: [PM Tool] Build your models Skip Next Module

Build four of your main models: project, task, discussion and comment (don't worry about associations yet, will add those later).

#### Here are a summary of suggested fields and validations (feel free to add to those)

* Project: title(required & unique), description and due_date
* Task: title (required & unique within a project) and due_date
* Discussion: title(required), description
* Comment: body(required)

### Assignment: [PM Tool] Projects Skip Next Module

* Build CRUD for your projects in the project management tool (PM Tool) with:
* Ability to list all the projects in the system
* Ability to view a page with a form to create a new project
* Ability to click "submit" on the form and create the project
* It shouldn't allow creating projects without a title
* On the listing page there should be a link to visit the project display page
* That page should have "edit" and "delete" links
* Clicking the edit link should go to a page similar to the one for creating a new project, except that it should say "editing project" and should be pre-populated with project info
* Clicking "delete" should prompt the user "Are you sure you want to delete this project" and if the user clicks "yes" it should delete the project from the database and take the user back to listing page.

### Assignment: [PM Tool] Tasks Skip Next Module

* Implement full CRUD operations for the Task resource in the PM tool. Very similar to the project resource.

## TEST DRIVEN DEVELOPMENT

### Assignment: [PM Tool] Write Tests for the Project model Skip Next Module

Write the following tests for the PM Tool Project Model:

* Validation of the presence of the project title
* Validation of the uniqueness of the project title
* Validation that the due_date must be greater than today's date

### Assignment: [PM Tool] Write tests for the Projects Controller Skip Next Module

Write tests for the following Projects Controller actions: new / create / show / index

* Stretch 1: Also write tests for the edit / update / destroy actions
* Stretch 2: Do the above in TDD style

### Assignment: [PM Tool] Tasks Next Module

* Each project needs tasks, so build a way to add tasks to the project.
* Each task must have "body". Make sure that tasks can be marked as "done" or "undone".
* Make sure that on the project show page you list all the tasks in two group: done and not done. Creating a task puts it in a "not done" list to start.

### Assignment: [PM Tool] Discussions and Comments Next Module

* Give the ability to have discussions for your project. Each discussion must have a title and a body. Then each discussion has many comments.
* Give the ability to update / delete both the discussion and the comments. Don't worry about user permissions for now.

### Assignment: [PM Tool] ERD Skip Next Module

* Build an ERD diagram for you PM Tool for what you know about it so far. Feel free to add more features if you want. Keep in mind that the ERD may change later as you learn more about adding other features.

### Assignment: [PM Tool] Add User Authentication Next Module

* Add standard user authentication for your PM Tool. Make sure your user has first name, last name and email.
* Associate your records with the user model as per your ERD.

### Assignment: [PM Tool] Edit User

* Implement the ability to edit the user's first name, last name and email for your PM Tool project. Make it so when the user clicks on his/her name they go to a page where they can edit their information.

### Assignment: [PM Tool] Change Password Skip Next Module

* Implement the ability to change the password for your users on the Blog tool. The page must contain three fields: current password, new password and new password confirmation. The user must enter a correct current password and matching new password and new password confirmation. Make sure that the new password is different from the current password.

### Assignment: [PM Tool] Deploy to Heroku Skip Next Module

* Deploy your PM Tool to production on Heroku. Get into the habit of deploying frequently. Maybe every week.

### Assignment: [PM Tool] Add and upgrade tests with user authentication Skip Next Module

* Upgrade the specs you've written in your PM tool to take into consideration user authentication by doing the following:
* Preventing non-signed in users from creating, updating or deleting projects
* Associating projects with logged in users
* Preventing logged in users from updating or deleting projects they did not create

### Assignment: [PM Tool] Favouriting Projects Skip Next Module

* Add ability to favorite projects. Users can't favorite their own projects. User can only favorite project ones.
* Add a section for users to view their favorited projects.

### Assignment: [PM Tool] Add Emailing Skip Next Module

> Setup mailing with your PM tool.

* Add mailers to the following:
* Discussion owner when someone comments on the discussion (if it's not the same user)
* Task owner when someone completes the task (if it's not the same user)


### Assignment: [PM Tool] Move to the background Skip Next Module

> Do the following for your PM Tool:

* Setup Delayed Job
* Move all the mailers to the background
* Setup a rake task that does the following:
* Make a summary (list) of all newly created tasks that that day for projects
* Make a summary (list) of all newly created discussions that that day for projects
* Send an email with the summary to project owners
* Note: you don't have to set up automatic invoking to the rake task as part of this assignment, just run it manually and make sure it works. If you're curious on how this can be set up in production you can take a look at the following:
https://en.wikipedia.org/wiki/Cron
https://github.com/javan/whenever

### Assignment: [PM Tool] AJAXify task creation & deletion Skip Next Module

* Make creating tasks for projects use AJAX so that the page doesn't reload.
* Make marking a task as complete use AJAX
* Make deleting a task use AJAX
* [Stretch]: AJAXify Task editing / Updating

### Assignment: [PM Tool] AJAXify comment creation & deletion Skip Next Module

* Make creating comments for discussions use AJAX so that the page doesn't reload.
* Make deleting a comment use AJAX.
* [Bonus] AJAXify comment editing / Updating
