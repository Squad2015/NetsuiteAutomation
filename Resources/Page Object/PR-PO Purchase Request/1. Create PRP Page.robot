*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot



*** Keywords ***

Click procurement plan button
    click element                                   ${PRP_PROCUREMENT_PLAN_BUTTON}
Click new procurement item
    click button                                    ${PRP_NEW_PROCUREMENT_PLAN_ITEM_BUTTON}

#CREATE PRP
Set bill of quantity - BQI NUM
    click element                                   ${PRP_BILL_OF_QUANTITY_ARROW}
    click element                                   ${PRP_BILL_OF_QUANTITY_LIST}
    click element                                   ${PRP_BQI_NUM}

Set EYM Item - Test Item
    click element                                   ${PRP_ITEM_ARROW}
    click element                                   ${PRP_ITEM_LIST}
    input text                                      ${PRP_ITEM_SEARCH_BOX}      ${PRP_ITEM_EYM}
    click element                                   ${PRP_ITEM_SEARCH_BUTTON}
    click element                                   ${PRP_ITEM_EYM_CLICK}

Set quantity - Test Quantity
    input text                                      ${PRP_QUANTITY}     ${PRP_TEST_QUANTITY}

Set amount - Test Amount
    input text                                      ${PRP_AMOUNT}       ${PRP_TEST_AMOUNT}

Save PRP
    click button                                    ${PRP_SAVE_BUTTON}
    wait until page contains element                ${REQUEST_ITEMS_BUTTON}
