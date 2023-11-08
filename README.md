# TfL Coding Challenge
## Overview of API
TfL maintains an open data REST API at https://api.tfl.gov.uk
Amongst the data available is the status of tube lines. An example of the data returned is
shown below: -
GET http://api.tfl.gov.uk/Line/Mode/Tube/Status will return an array of the current statuses of all tube lines

## Exercise Task Overview
We would like you to build a simple single mobile application. This will show the current status of all tube lines.
The application that you build should show: -
- The status of all lines
- For each tube line the application should show: -
- LineName
- LineStatus

The results should display correctly on a mobile device. Specifically, the line statuses should display in a single column and should stretch depending on the viewport width.

## Approach
- You should also consider accessibility e.g. voice over and text scaling, and landscape mode. As a UK government organisation everything TfL produces must be WCAG 2.1 AA Compliant.
- You may wish to use BDD and/or TDD in your answer.
- Please use Swift
## Your code should be submitted as either of the following: -
- As a Zip File via email(stripped of all binaries and intermediate build objects (otherwise it will be blocked by our email system)
- As a link to publicly accessible area such as a GitHub repository or DropBox.
- You should supply instructions in Markdown format in a file called “README.md”.
## These should contain details of: -
- How to build the code
- How to run the output
- How to run any tests that you have written
- any assumptions that you’ve made
- anything else you think is relevant
* It should be possible to configure your application to use a different API key. You should ensure that yours are removed from the source code before you submit it and instructions are included in the readme file as how to change these.

# Developer Notes:

> [!NOTE]
> Run the project in an iphone or Ipad simulator.
> You can rotate the screen to see the auto layout
<img width="355" alt="Screenshot 2023-11-08 at 20 36 06" src="https://github.com/mahesh46/TFLTubeStatus/assets/3464277/737bed14-1d03-49b3-a2f7-0f4b5ae8418b">
<img width="755" alt="Screenshot 2023-11-08 at 20 36 18" src="https://github.com/mahesh46/TFLTubeStatus/assets/3464277/644ff342-7580-4aca-b955-2b7d1d32a39a">


#

> [!NOTE]
> In the mac iphone simulator.
> Open Setting -> Accessibility -> Display and Text size
> Press  Larger Text, toggle on , larger accessibility Sizes , then use slider to adjust the text size
> Then go back to the app to see the larger text on the app

<img width="359" alt="Screenshot 2023-11-08 at 20 47 02" src="https://github.com/mahesh46/TFLTubeStatus/assets/3464277/fec5745d-0181-457c-8884-e91d00af7fc9">

#

> [!IMPORTANT]
> The API URL is inthe Debug.xcconfig and Release.xcconfig file in the project and is set as follows
> 
> CT_API_URL = api.tfl.gov.uk/Line/Mode/Tube/Status
