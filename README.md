# Volunteer Database

A simple database that allows a coordinator to add, update and delete projects and volunteers for projects. This is all organized and controlled through a web access point that is programmed in the Ruby programming language and interfaced through the Sinatra framework gem.

### Prerequisites

Web browser with HTML5, CSS3, & ES6 compatibility
Examples: Chrome, Safari

Ruby 2.3.1
Bundler
postgresSQL


### Installing

Installation is quick and easy! First you can open this link <!--HEROKU LINK HERE--> to see the webpage in action live online. Or you can clone this repository to your machine from https://github.com/Sommersette/volunteers.git, navigate to the file path in your terminal, and run 'app.rb' by typing '$ruby app.rb'. If you chose to clone the repository, after you run 'app.rb' you will need to copy the localhost path into your web browser. The standard localhost for Sinatra is port localhost:4567.

Database set up instructions, for your convenience and clarity have been included in the project folder as a file titled: database_setup.txt. To utilize this file it will need to be opened in a text editor or word processor. The postgres server will need to started by entering postgres into a terminal. Then the SQL will need to be started in another terminal by entering psql. Once this is done the text from the text file may be copied and pasted into the psql terminal and then press the ENTER key to execute the production. The database should be set up as volunteer_tracker with resource tables titled projects, volunteers, and a join table of work_plan. The data base and tables once pasted will be ready to use.

## Built With

* Ruby
* Sinatra
* HTML
* CSS
* Bootstrap https://getbootstrap.com/
* ES6
* Jquery https://jquery.com/
* postgres
* SQL

## Specifications

| behavior |  input   |  output  |
|----------|:--------:|:--------:|
|User will enter volunteer into database.|Lille Skutt| The name 'Lille Skutt' will appear on the list of volunteers|
|User will enter projects into database|Dunderhonung|The project 'Dunderhonung' now appears amongst the list of projects managed by the NGO|
|User will be able to assign volunteers to one project|Click on Project and click on volunteer list| Volunteer's name now appears in list|
|User will delete and update volunteers|Click volunteer| Volunteers name is no longer on the list|

## Author

* Trevor Fast

## License

Copyright (c) 2017 Trevor Fast

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
