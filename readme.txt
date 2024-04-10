Setup for Django -
1. Install Python, enable PIP and set environment path global for easier executions of Commandline statements
2. Install Django
3. Install Django REST framework

Setup for Robot framework -
1. Install Robot framework
2. Install Selenium-Library
3. Install Web driver either one or both the web browsers (Firefox, Google Chrome)
4. Install Requests-Library

**********************************************
Note: The IDE being used is Visual Studio Code
**********************************************

Execution Details -
Before downloading the repository, all the initial setup must be ready.

Then download the respository and extract it in any folder or drive we wish to.

Open the folder project (i.e, robotapi) in VS Code in Administrator mode for smooth execution.

Then inside the Project folder (i.e, robotapi), in the terminal create the live server of Django by executing the following command
python manage.py runserver

and since the robot test suite is in the project folder, for executing the testsuite we execute the following command in the new terminal
robot -d robot_test_results test_suite

Here robot_test_results is a folder that contains all the reports and logs after running the robot command
*********************************************************************************************************

I would also like to mention here, as per the challenge, i have made minor changes in the structure of json data.

Because as per the robot framework syntax, the keywords has differ from the given json data.

Also note that, instead of opening the browser in Google Chrome, i have instruct to open it in Mozilla Firefox, either way both are similar as long the goals are being met.

Through alot of trial and error i have found among one of the thousand solutions in completing the challenge.

Hoping my coding snippet would have a positive presentation.

Thank you for this opportunity.
