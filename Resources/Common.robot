*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot


*** Keywords ***
Start web test
    open browser    ${URL}      ${BROWSER}
    maximize browser window
    set selenium speed      0.3 seconds

Close web test
    close all browsers

Take SS
    capture page screenshot

