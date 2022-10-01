***Settings***
Library         AppiumLibrary
Resource        ../Resources/appDemosPages.robot
Variables       ../Resources/locator.yaml
Suite Setup     Start Session Apps
Suite Teardown  Close Apps

***Test Cases***
As a user i want to open Demos apps
    Page should contain Text        Accessibility
    Tap Accessibility
    Sleep                           1
    Page should contain Text        Accessibility Node Provider
As a user i want to open accessibility node Provider
    Tap Accessibility Node Provider
    Page should contain Text        Enable TalkBack
