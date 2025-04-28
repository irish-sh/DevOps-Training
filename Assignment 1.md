#Assignment 1
Objective:
Automate the build, test, and delivery of a simple Java console application using Jenkins.
 Tasks:
Pull source code from a Git repository.
Compile Java code using a script and package it into a .jar file.
Run unit tests using JUnit and generate test reports (include mock/sample test cases).
Copy the output .jar file to a shared folder.
Execute the .jar as a background process and store the logs java -jar.
Zip the build folder, including logs and output files.
Move the zip file to a folder.
Push zip file to github repository
Send an email to respective mentors with the test report and zip attached.
older zip files should be deleted using a script.
Status messages at each stage.
Note:
You can use batch scripts and Jenkins freestyle or pipeline jobs.
Focus on modularity
 