Inspire
https://www.gloomaps.com/

What are our models?
User
has_many :projects
# Has_many :projects through: :favorited_projects
# Has_many :favorited_projects
# Has_many :favorites, through: favorited_projects, source: :project
(user will have a role)

# Favorited_projects
# Belongs_to :user
# Belongs_to :project

Sections
Has_many :project_sections
Has_many :projects through: :project_sections

Projects
Belongs_to :student
Has_many :sections through: project_sections
Has_many :project_sections
# Has_many :favorited_projects


Project_sections
Belongs_to :project
Belongs_to :section


Feature Creep:
* Project requirements section. Match up sections to the specific requirements of each project. So when user uploads idea, it will check off the requirements are met *


Possibilities:
1. Technologies --> Technologies related to app in question? (eg Sinatra, Rails, CLI etc)
2. Social component (tweet out what project they will attempt)
3. ActiveAdmin

What info should appear on the landing page?
Navbar: sign in / out, login with OAuth, Sections, all projects
Hot projects / recent projects (def fire icons)

Landing page should have:
1. Navbar (OAuth Github, Login, Signup, Signout, User profile)
2. Examples of projects that have been built!
3. Hot projects / recent projects (how many people have liked a favorited project)

Aziz, Reggie, John
Building controllers for:
Users
Projects
Sections
Sessions controller


Meg, Guy, Terry, Yonnick
View for 
1. Landingpage

2. Users profile page 
 - Show user created projects
 - Create

3. Sections 
 - Index (with a scope method to filter projects by section)

4. Projects
  - Index
  - Show
  - New

Next Sprint
Create Trello (or Airtable)
Finish Views
Finish Controllers




What happens after a user signs in?
Navbar addition: Favorited / bookmarked projects
Home page for user with user project submission info







What should the flow of submitting a post be?
What information should a user submit in a form?
Which third party OAuth will we use?
What are long term features?
What technologies will we use for Authorization? (not to be confused with Authentication)

