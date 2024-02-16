*** Settings ***
Library     SeleniumLibrary
Variables     ../Page Object/Login.py
Resource     ../Resource/BrowserResource.robot

*** Keywords ***
Open My Browser
     # [Arguments]     ${SiteURL}     ${Browser}
     Open Browser     ${SiteURL}     ${BrowserFireFox}    # robotcode: ignore
     Maximize Browser Window

Enter UserName     
     [Arguments]     ${username}
     Input Text     ${txt_username}     ${username}

Enter UserPassword
     [Arguments]     ${password}
     Input Text     ${txt_password}     ${password}    
    
Click LoginButton
     Click Button     ${btn_login}

Verify Succesful Login
     Element Should Be Visible     xpath://span[text()='Account Status:']

Close My Browser
     Close Browser