Inspire

Lead Engineers
Jennifer Pazos
Reggie Carter II

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
Technologies
Social component (tweet out what project they will attempt)

What info should appear on the landing page?
Navbar: sign in / out, login with OAuth, Sections, all projects
Hot projects / recent projects (def fire icons)

What happens after a user signs in?
Navbar addition: Favorited / bookmarked projects
Home page for user with user project submission info







What should the flow of submitting a post be?
What information should a user submit in a form?
Which third party OAuth will we use?
What are long term features?
What technologies will we use for Authorization? (not to be confused with Authentication)

