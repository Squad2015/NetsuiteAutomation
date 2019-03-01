*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot


*** Keywords ***

# Go to Vendors > Purchases > Enter Requisitions>Lists

View PR Requisition (Create PO)
    click element       ${PR_VIEW_PR}

Click Create PO Button
    wait until page contains element        ${PO_CREATE_PO_BUTTON}
    click element       ${PO_CREATE_PO_BUTTON}

Set Test Vendor
    input text          ${PO_CREATE_PO_VENDOR_INPUT}                ${PO_CREATE_PO_TEST_VENDOR}
    sleep           3s

Click PO Checkbox
    click element  ${PO_CREATE_PO_CHECKBOX}
    sleep           3s

Click PO Submit Button
    click button        ${PO_CREATE_PO_SUBMIT_BUTTON}
    sleep           2s
    wait until page contains element            ${PO_CREATE_PO_REFRESH_BUTTON}


Click Refresh Button
    repeat keyword          20 times         click button        ${PO_CREATE_PO_REFRESH_BUTTON}
    wait until page contains element        ${PO_CREATE_PO_COMPLETE}
    click button        ${PO_OK_BUTTON}


#Go to Vendors > Purchases > Enter Purchase Orders>List
View PO Number
    click element       ${VIEW_PO_NUMBER}

Click PO Edit Button
    click button        ${PO_EDIT_PO_BUTTON}

Set Repeat Order Value
    input text          ${PO_REPEAT_ORDER_INPUT}            ${PO_REPEAT_ORDER_INPUT_VALUE}

Click PO Save Button
    click button        ${PO_SAVE_BUTTON}
    wait until page contains element        ${PO_SUCCESSFULLY_CREATED}
    click button            ${PO_SUBMIT_FOR_APPROVAL_BUTTON}