*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot



*** Keywords ***

Choose custom form
    click element       ${CUSTOM_ARROW}
    click element       ${PSC_PF}

Create project name & public name
    input text          ${PROJECT_NAME}                        ${EYM_PROJECT_NAME}
    input text          ${PUBLIC_NAME}                         ${EYM_PROJECT_NAME}

Choose project type
    click element       ${PROJECT_TYPE_ARROW}
    click element       ${BY_ADMIN}

Choose project status
    click element       ${PROJECT_STATUS_ARROW}
    click element       ${AWARDED}

Choose project charter
    click element       ${PROJECT_CHARTER_ARROW}
    click element       ${PROJECT_CHARTER_LIST}
    input text          ${PROJECT_CHARTER_SEARCHBOX}            ${PROJECT_CHARTER_FILE}
    click element       ${PROJECT_CHARTER_CLICK}

Set customer
    click element       ${CUSTOMER_ARROW}
    click element       ${CUSTOMER_LIST}
    input text          ${CUSTOMER_SEARCHBOX}                   ${EYM_CUSTOMER}
    click button        ${CUSTOMER_SEARCH_BUTTON}
    click element       ${CUSTOMER_CLICK}

Select project in charge
    click element       ${PROJECT_IN_CHARGE_ARROW}
    click element       ${PROJECT_IN_CHARGE_LIST}
    input text          ${PROJECT_IN_CHARGE_SEARCH_BAR}         ${PROJECT_IN_CHARGE_EYM}
    click button        ${PROJECT_IN_CHARGE_SEARCH_BUTTON}
    click element       ${PROJECT_IN_CHARGE_NAME}

Set project dates
    input text          ${PROJECT_DATES_START_DATE}             ${PROJECT_DATES_DATE}
    input text          ${PROJECT_DATES_BID_DATE}               ${PROJECT_DATES_DATE}
    input text          ${PROJECT_DATES_BID_AWARD_DATE}         ${PROJECT_DATES_DATE}

Save the project
    click button        ${CREATE_PROJECT_BUTTON_SAVE_UP}
    wait until page contains element        ${CREATE_PROJECT_VERIFICATION}
