*** Settings ***
Library     SeleniumLibrary
Resource     ../Resource/PropertyResource.robot

*** Test Cases ***
Property
     [Tags]     Regression
     Click Element    xpath://span[@data-testid='propertiesTest']
     Sleep     30 seconds
     Capture Page Screenshot     ../Screenshots/ValidLogin.png
