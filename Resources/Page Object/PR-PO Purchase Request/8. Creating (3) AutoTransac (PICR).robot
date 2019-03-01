*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot


*** Keywords ***

#Log in as PSC Project In-Charge Requester Go to Transactions > Purchases > Receive Orders > List

View IR
    click element       ${IR_VIEW_IR}

Click Confirm Acceptance Button
    click button        ${IR_CONFIRM_ACCEPTANCE_BUTTON}

Set Pin (Project In Charge)
    select window       Pin
    sleep       1s
    click element       ${IR_PIN_INPUT}
    sleep       1s
    input text          ${IR_PIN_INPUT}         ${BOQ_PIN_APPROVER}
    sleep       4s

Click Submit Button
    click button        ${IR_SUBMIT_PIN_BUTTON}
    sleep       2s
    select window       MAIN