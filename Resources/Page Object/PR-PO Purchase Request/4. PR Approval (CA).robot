*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot


*** Keywords ***

#   Go to MD Transactions - Purchases - Approve Purchase Requistions

View PR Requisition (Approval)
    click element       ${PR_NUMBER}
    wait until page contains element        ${PR_APPROVE_BUTTON}

Approve PR Requisition
    click button        ${PR_APPROVE_BUTTON}
    select window       Enter PIN

Set BOQ Approver Pin
    click element       ${PR_PIN_INPUT}
    input text          ${PR_PIN_INPUT}     ${BOQ_PIN_APPROVER}

Submbit
    click button        ${PR_PIN_APPROVE_BUTTON}
    sleep       1s
    select window       Main
    sleep       1s
