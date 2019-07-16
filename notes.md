Inspire

# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes) 
- [x] Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
- [x] Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
- [x] Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
- [ ] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
- [ ] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
- [x] Include signup (how e.g. Devise)
- [ ] Include login (how e.g. Devise)
- [ ] Include logout (how e.g. Devise)
- [ ] Include third party signup/login (how e.g. Devise/OmniAuth)
- [ ] Include nested resource show or index (URL e.g. users/2/recipes)
- [ ] Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
- [ ] Include form display of validation errors (form URL e.g. /recipes/new)

Confirm:
- [ ] The application is pretty DRY
- [ ] Limited logic in controllers
- [ ] Views use helper methods if appropriate
- [ ] Views use partials if appropriate

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

favorite_projects
belongs_to :users
belongs_to :projects


ToDo
1. Navbar needs: signup login/logout, oauth signin
(Navbar addition: Favorited / bookmarked projects)
2. Oauth google
3. Link to show pages

Dwayne will:
Finish controllers crud functionality
show for views



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
Create  Airtable project
Finish Views
Finish Controllers





Home page for user with user project submission info

What should the flow of submitting a post be?
What information should a user submit in a form?
Which third party OAuth will we use?
What are long term features?
What technologies will we use for Authorization? (not to be confused with Authentication)

