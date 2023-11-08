TfL Coding Challenge
Overview of API
TfL maintains an open data REST API at https://api.tfl.gov.uk
Amongst the data available is the status of tube lines. An example of the data returned is
shown below: -
GET http://api.tfl.gov.uk/Line/Mode/Tube/Status will return an array of the current statuses of all tube lines

Exercise Task Overview
We would like you to build a simple single mobile application. This will show the current status of all tube lines.
The application that you build should show: -
• The status of all lines
• For each tube line the application should show: -
o LineName o LineStatus
The results should display correctly on a mobile device. Specifically, the line statuses should display in a single column and should stretch depending on the viewport width.

Approach
• You should also consider accessibility e.g. voice over and text scaling, and landscape mode. As a UK government organisation everything TfL produces must be WCAG 2.1 AA Compliant.
• You may wish to use BDD and/or TDD in your answer.
• Please use Swift
• Your code should be submitted as either of the following: -
o AsaZipFileviaemail(strippedofallbinariesandintermediatebuildobjects (otherwise it will be blocked by our email system)
o AsalinktopubliclyaccessibleareasuchasaGitHubrepositoryorDropBox.
• You should supply instructions in Markdown format in a file called “README.md”.
These should contain details of: -
o Howtobuildthecode
o Howtoruntheoutput
o Howtorunanyteststhatyouhavewritten o anyassumptionsthatyou’vemade
o anythingelseyouthinkisrelevant
• It should be possible to configure your application to use a different API key. You should ensure that yours are removed from the source code before you submit it and instructions are included in the readme file as how to change these.

