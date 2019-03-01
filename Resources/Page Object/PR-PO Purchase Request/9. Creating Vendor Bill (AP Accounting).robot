*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot


*** Keywords ***

#Log in as PSC A/P Accounting Go to Vendors > Purchases > Enter Purchase Orders > List
View Pending Bill
    click element       ${PO_VIEW_PENDING_BILL}

Click Bill Button
    click button        ${PO_BILL_BUTTON}
    alert should be present         ${PO_BILL_ALERT}        ACCEPT
    sleep               3s

Click Item Location Arrow
    click element       ${PO_BILL_LOCATION}
    input text          ${PO_BILL_LOCATION}                ${EYM_PROJECT_NAME}
    click element       //*[@id="parent_actionbuttons_location_fs"]/a[2]


Set Location
    click element       ${PO_BILL_LOCATION_LIST}
    click element       ${PO_BILL_LOCATION_SEARCH}
    input text          ${PO_BILL_LOCATION_SEARCH}         ${EYM_PROJECT_NAME}
    click button        ${PO_BILL_LOCATION_SEARCH_BUTTON}

Select Location
    mouse over          ${PO_BILL_TEST_LOCATION_SELECT}
    sleep       2s
    click element       ${PO_BILL_TEST_LOCATION_SELECT}

Click Item Location
    click element       ${PO_BILL_ITEM_LOCATION_INPUT1}
    click element       ${PO_BILL_ITEM_LOCATION_ARROW}
    click element       ${PO_BILL_ITEM_LOCATION_LIST}

Search Item Location
    click element       ${PO_BILL_ITEM_LOCATION_SEARCH}
    input text          ${PO_BILL_ITEM_LOCATION_SEARCH}         ${EYM_PROJECT_NAME}

Click Search Button
    click button        ${PO_BILL_ITEM_LOCATION_SEARCH_BUTTON}

Select Item Location
    click element       ${PO_BILL_ITEM_LOCATION_SELECT}
    sleep               3s
    click element       ${PO_BILL_ITEM_LOCATION_ADD}

Click Save Button
    mouse over          //input[@id='entity_display']
    sleep               2s
    click element       ${PO_BILL_SAVE_BUTTON}