# TFL Coding Challenge
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
> In XCode, run the project in an iphone or Ipad simulator.
> You can rotate the screen to see the auto layout.
<img width="355" alt="Screenshot 2023-11-08 at 20 36 06" src="https://github.com/mahesh46/TFLTubeStatus/assets/3464277/737bed14-1d03-49b3-a2f7-0f4b5ae8418b">
<img width="755" alt="Screenshot 2023-11-08 at 20 36 18" src="https://github.com/mahesh46/TFLTubeStatus/assets/3464277/644ff342-7580-4aca-b955-2b7d1d32a39a">


#

> [!NOTE]
> In the mac iphone simulator.
> Open Setting -> Accessibility -> Display and Text size.
> Press  Larger Text, toggle on , larger accessibility Sizes , then use slider to adjust the text size.
> Then go back to the app to see the larger text on the app.

<img width="359" alt="Screenshot 2023-11-08 at 20 47 02" src="https://github.com/mahesh46/TFLTubeStatus/assets/3464277/fec5745d-0181-457c-8884-e91d00af7fc9">

#
> [!NOTE]
> In the mac in xcode, with the xcode project running in the simulator.
> choose from menu Xcode -> Open Developer Tools -> tap on Accessibility Inspector
> In the accessibility Inspector, choose the simiulator.
> Then click on play button.


https://github.com/mahesh46/TFLTubeStatus/assets/3464277/9420e8fb-38a5-4c79-8b47-1eba0c1581f4

#
> [!NOTE]
> In the mac in xcode, with the xcode project, in the test navigator.
>  click on the diamond next to the class NetworkServiceTests, to run the XCTests tests.

<img width="1126" alt="Screenshot 2023-11-08 at 21 12 20" src="https://github.com/mahesh46/TFLTubeStatus/assets/3464277/aba0918f-ea4a-4216-8789-d8bb530dc322">

> [!NOTE]
> In the mac in xcode, with the xcode project, in the test navigator.
> click on the diamond next to the class tflTubeStatusTests, to run the XCTestsUI tests
> 
> Using mockdata for test (based on a snapshot of live data) - so that results are consistent, if we used live data, the tube services status could change.
<img width="1142" alt="Screenshot 2023-11-08 at 23 32 51" src="https://github.com/mahesh46/TFLTubeStatus/assets/3464277/8179d7cc-2113-4a54-8f01-421dab3fb9eb">

#
> [!IMPORTANT]
> I set the app to display in light mode, as in dark mode it is more difficult to see the Northern line text as the corporate colour is black. Thinking about the accessibility user needs and the light mode is better for the partially impaired sighted person.

#
> [!IMPORTANT]
> I Used XCTestUI test to check screen content, you could use,package manager [Snapshots to ](https://github.com/pointfreeco/swift-snapshot-testing) to check screen content has not changed. But you can check this if you test each field in the XCTestUI test.

#
> [!IMPORTANT]
> I created a ServiceProtocol, so that I can inject NetworkService and MockNetworkservice for live and mock testing.

#
> [!IMPORTANT]
> The API URL is inthe Debug.xcconfig and Release.xcconfig file in the project and is set as follows.
> 
> CT_API_URL = api.tfl.gov.uk/Line/Mode/Tube/Status
