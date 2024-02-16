*** Settings ***
Library     SeleniumLibrary
Resource     ../Resource/PropertyResource.robot
Resource     ../Resource/Login_Keywords.robot
Library     DataDriver     ../Test Data/Data.xlsx
Library     OperatingSystem
Suite Setup     PropertyResource.Open My Browser


*** Test Cases ***
Property
     Click Element    xpath://span[@data-testid='propertiesTest']
     Sleep     30 seconds
     Capture Page Screenshot     ../Screenshots/ValidLogin.png

