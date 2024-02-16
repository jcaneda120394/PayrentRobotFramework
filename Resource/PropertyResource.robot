*** Settings ***
Library     SeleniumLibrary
Variables     ../Page Object/Properties.py
Resource     ../Resource/BrowserResource.robot


*** Keywords ***
Open My Browser
     # [Arguments]     ${SiteURL}     ${Browser}
     Open Browser     ${SiteURL}     ${BrowserFireFox}    # robotcode: ignore
     Maximize Browser Window
Click Property
     Click Button     ${linkProperty}