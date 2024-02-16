*** Settings ***
Library     SeleniumLibrary
Resource     ../Resource/Login_Keywords.robot
Library     DataDriver     ../Test Data/Data.xlsx
Test Template     Validation Page
Suite Setup     Open My Browser    # robotcode: ignore

*** Test Cases ***
# Login Valid Credentials
#      Open My Browser     ${URL}     ${Browser}
#      Enter UserName     ${user}
#      Enter UserPassword     ${pwd}
#      Click LoginButton
#      Sleep     10 seconds
#      Verify Succesful Login
#      Capture Page Screenshot     ../Screenshots/ValidLogin.png
#      Close My Browser
Payrent Verify Valid Login Page     ${username}     ${password}    # robotcode: ignore  
     # [Tags]     Regression

*** Keywords ***
Validation Page
     [Arguments]     ${username}     ${password}
     Enter UserName     ${username}
     Enter UserPassword     ${password}
     Click LoginButton
     Capture Page Screenshot     ../Screenshots/ValidLogin.png
     Sleep     30 seconds  
     Verify Succesful Login











 