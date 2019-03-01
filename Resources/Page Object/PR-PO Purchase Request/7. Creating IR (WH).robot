*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot


*** Keywords ***
#   Log in as PSC Warehouse Head  Go to Receiving > Receiving > Enter Purchase Orders > List (Project Staging)

View PO Date
    click element       ${PO_WH_PO_DATE_RECEIVE}

Click Receive Button
    click button        ${PO_RECEIVE_BUTTON}
    alert should be present         ${IR_ALERT_TEXT}        ACCEPT
    sleep       1s

Set Location IR
    click element       ${IR_ITEM_LOCATION_ARROW}
    click element       ${IR_ITEM_LOCATION_LIST}
    click element       ${IR_ITEM_LOCATION_SEARCH_INPUT}
    input text          ${IR_ITEM_LOCATION_SEARCH_INPUT}        ${IR_ITEM_TEST_LOCATION}
    click element       ${IR_ITEM_LOCATION_SEARCH_BUTTON}
    mouse over          ${IR_ITEM_LOCATION_CLICK}
    sleep       1s
    click element       ${IR_ITEM_LOCATION_CLICK}
    sleep       2s


Set Bin
    click element       ${IR_INVENTORY_DETAIL_BIN}
    sleep       1s
    mouse over              ${IR_BIN_FORM}
    sleep       1s
    select frame            ${IR_BIN_FRAME}
    sleep       2s
    click element       ${IR_BIN_LOCATION_ARROW}
    mouse over          ${IR_MAIN_BIN}
    sleep       1s
    click element       ${IR_MAIN_BIN}

Set Quantity
    click element           ${IR_BIN_QUANTITY_FOMR}
    sleep           1s
    click element           ${IR_BIN_TEST_QUANTITY}
    input text              ${IR_BIN_TEST_QUANTITY}         ${PRP_TEST_QUANTITY}

Click Add Button
    click button        ${IR_BIN_ADD_BUTTON}

Click Ok Button
    click button        ${IR_BIN_SECONDARY_OK_BUTTON}

Input Customer: Project Code
    click element       ${IR_PROJECT_CODE_ARROW}
    click element       ${IR_PROJECT_CODE_LIST}
    click element       ${IR_PROJECT_CODE_SEARCH}
    input text          ${IR_PROJECT_CODE_SEARCH}       ${EYM_PROJECT_NAME}
    click element       ${IR_PROJECT_CODE_SEARH_BUTTON}
    mouse over          ${IR_PROJECT_CODE_SEARCH_VALUE}
    sleep       1s
    click element       ${IR_PROJECT_CODE_SEARCH_VALUE}


Click IR Save Button
    click element       ${IR_SAVE_BUTTON}