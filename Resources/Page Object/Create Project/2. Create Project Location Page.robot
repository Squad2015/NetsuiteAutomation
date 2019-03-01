*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot


*** Keywords ***

Create Project Location Page
    page should contain button          ${CREATE_PROJECT_LOCATION_BUTTON}

    click button        ${CREATE_PROJECT_LOCATION_BUTTON}
    select window       Create Project Location
    sleep       2s
    click element       ${INPUT_PROJECT_LOCATION}
    input text      ${INPUT_PROJECT_LOCATION}       ${PROJECT_TEST_LOCATION}
    click button        ${PROJECT_LOCATION_SAVE_BUTTON}
    sleep       2s
    select window       Main
