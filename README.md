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
