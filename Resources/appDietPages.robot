***Settings***
Library             AppiumLibrary
Variables           ../Resources/appDietLocator.yaml

***Keywords***
Start Session Apps
    Set Appium Timeout  10
    #Edit this with your personal device information
    Open Application    http://localhost:4723/wd/hub        #Dont forget to change host and port in Appium Desktop
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=MySkill
    ...                 appPackage=com.fghilmany.dietmealapp
    ...                 appActivity=com.fghilmany.dietmealapp.ui.main.MainActivity
    ...                 autoGrantPermissions=true
    ...                 noReset=true
    Sleep               1


User Tap Next Button
    Tap                             ${homePageNextButton}


Close Session Apps
    Capture Page Screenshot
    Close Application                      noReset=true

Close Apps
    Capture Page Screenshot
    Quit Application   


