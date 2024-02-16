*** Settings ***
Library     SeleniumLibrary
Variables     ../Page Object/Properties.py


*** Keywords ***

Click Property
     Click Button     ${linkProperty}