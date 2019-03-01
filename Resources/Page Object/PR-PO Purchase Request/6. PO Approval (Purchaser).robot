*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot


*** Keywords ***

Click Sumbit Approval Button
    click element           ${VIEW_APPROVE_PO_NUMBER}
    wait until page contains element          ${PO_APPROVE_BUTTON}

Click Approve Button (New Approver)
    click button            ${PO_APPROVE_BUTTON}

Set Pin Approver (1st New Approver)
    select window           Enter PIN
    input text              ${PO_PIN_INPUT}         ${BOQ_PIN_APPROVER}
    click button            ${PO_SUBMIT_PIN_BUTTON}

Click Approve Button (2nd New Approver)
    select window           Main
    click button            ${PO_APPROVE_BUTTON}

Set Pin Approver (2nd New Aprrover)
    select window           Enter PIN
    input text              ${PO_PIN_INPUT}         1234
    click button            ${PO_SUBMIT_PIN_BUTTON}
    select window           Main
    wait until page contains element        ${PO_STATUS}