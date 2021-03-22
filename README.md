# PlanIt-Assessment

**Description**- Robot Framework is a generic open source automation framework for acceptance testing, acceptance test driven development (ATDD), and robotic process automation (RPA).
This Project is build in Robot Framework with Python Intepretor and Selenium Library. 
- Robot Framework - Version 3.2.2
- Selenium Libraray (Python)- Version 5.1.1
- Python - Version 3.9

**Pre- Requisites**
- Python 3.9 should be installed
- Pip should be installed
- If above two installed, then using python -m pip install <to install> , install below components
-   robotframework
-   robotframework-seleniumlibrary
-   robotframework-pythonlibcore
-   selenium
-   wheel
-   webdrivermanager

**Steps to be Performed**
- Clone the Project to Local using Git Hub URL
- Once the Project is cloned, navigate to cmd/Termial
- Navigate Project Folder and run the command - robot . ( it will execute all the test cases in this project)
- If you want to execute selective Suites using different variable below are few useful commands
-   robot --name <name> robotframework/jupiterToysAutomation/contactPageTestSuite.robot
-   robot --variable Browser:<Browser> . eg Browser:Chrome, Browser:Safari
- Please open the Log.html in root folder to check the Execution Report
- Robot Bat command file has been included as well. Please modify it if anhythin else is required
- Alternatively you can import the Project in IDE/RIDE and can execute the test using Run Configuration

Happy Testing...!!!!

Please reach out to me on tusharkr18@gmail.com for any issues.
