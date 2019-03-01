*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot


*** Keywords ***

# Go to Vendors > Purchases > Enter Bills > List

View Bill Payment
    click element       ${PO_BILL_VIEW_SAVE_BILL}

Click Make Payment Button
    click button        ${PO_BILL_MAKE_PAYMENT_BUTTON}

Set Remarks
    click element       ${PO_BILL_REMARKS_INPUT}
    input text          ${PO_BILL_REMARKS_INPUT}            ${PO_BILL_TEST_REMARKS}

Click Bill Save Button
    click button        ${PO_BILL_MAKE_PAYMENT_SAVEBUTTON}
