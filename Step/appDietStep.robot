*** Settings ***
Library                 AppiumLibrary
Resource                ../Resources/appDietPages.robot
Variables               ../Resources/appDietLocator.yaml
Suite Setup              Start Session Apps
Suite Teardown           Close Apps

***Keywords**
User Input Data
    Sleep                           5
    Input Text                      ${homePageNameField}        MySkill
    Input Text                      ${homePageWeightField}      75
    Input Text                      ${homePageHeightField}      175
    Tap                             ${homePageGenderMaleButton} 


***Test Cases***
As a user i want to open APP Diet
    Sleep                           5
    Page should contain Text        Welcome
    User Input Data
    User Tap Next Button
    Close Session Apps
