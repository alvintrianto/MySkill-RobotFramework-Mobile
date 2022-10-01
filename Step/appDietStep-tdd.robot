*** Settings ***
Library                 AppiumLibrary
Resource                ../Resources/appDietPages.robot
Variables               ../Resources/appDietLocator.yaml
Suite Setup              Start Session Apps
Suite Teardown           Close Apps
Library                  DataDriver      ../Resources/user.csv   sheet_name=sheet1
Test Template            User Input Welcome Data

***Keywords**
User Input Welcome Data
    Sleep                           5
    [Arguments]                     ${username}     ${weight}       ${height}
    Input Text                      ${homePageNameField}        ${username}
    Input Text                      ${homePageWeightField}      ${weight}
    Input Text                      ${homePageHeightField}      ${height}
    Tap                             ${homePageGenderMaleButton} 


***Test Cases***
As a user i want to open APP Diet
    Sleep                           5
    Page should contain Text        Welcome
    User Tap Next Button


User Input Welcome Data             ${username}     ${weight}       ${height}
    Close Session Apps
