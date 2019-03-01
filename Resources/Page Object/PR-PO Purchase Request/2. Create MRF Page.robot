*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot


*** Keywords ***

Click Request Item
    click button                    ${REQUEST_ITEMS_BUTTON}
    alert should be present         ${REQUEST_ALERT_TEXT}       ACCEPT
    click button                    ${MRF_OPEN_PRP}
    select window                   Procurement Plan

Create MRF
    click button                    ${MRF_PRP_SEARCH_BUTTON}
    click button                    ${MRF_PRP_MARK_ALL_BUTTON}
    alert should be present         ${MRF_PRP_ALERT_TEXT}       ACCEPT
    click button                    ${MRF_PRP_ADD_TO_MRF_BUTTON}
    log                             BOQ ADDED SUCCESFULLY!
    select window                   MAIN
    click button                    ${MRF_SAVE_BUTTON}
    click button                    ${MRF_SUBMIT_BUTTON}
    sleep       2s



