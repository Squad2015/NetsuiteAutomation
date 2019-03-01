*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot



*** Keywords ***

Select BOQ Approver
    click button        ${CREATE_BOQ_BUTTON}
    sleep       2s
    click element       ${BOQ_APPROVER_LIST}
    click element       ${BOQ_APPROVER_COST_APPROVER}

Select Project Subsystems and Activities
    click element       ${BOQ_PROJECT_SUBSYSTEMS_.0}

    #PO1
    input text          ${PO1_MATERIAL}                 ${BOQ_TEST_QUANTITY}
    input text          ${PO1_LABOR_ADMIN}              ${BOQ_TEST_QUANTITY}
    input text          ${PO1_EQUIPMENT}                ${BOQ_TEST_QUANTITY}
    input text          ${PO1_SUBCON}                   ${BOQ_TEST_QUANTITY}
    input text          ${PO1_MATERIAL_WITH_LABOR}      ${BOQ_TEST_QUANTITY}
    input text          ${PO1_GENERAL_REQUIREMENTS}     ${BOQ_TEST_QUANTITY}

Save as draft
    click button                ${BOQ_SAVEASDRAFT_BUTTON}

BOQ alert text should be ok
    alert should be present     ${BOQ_ALERT_TEXT}       ACCEPT

Submit for Approval
    click button                ${BOQ_SUBMIT_APPROVAL_BUTTON}

Manage BOQ
    click button                ${BOQ_MANAGE_BOQ_BUTTON}

Approve BOQ
    click button                ${BOQ_APPROVE_BOQ_BUTTON}

Set pin - BOQ Approver
    wait until element is enabled       ${BOQ_INPUT_PIN}
    input text                  ${BOQ_INPUT_PIN}        ${BOQ_PIN_APPROVER}
    click button                ${BOQ_PIN_OK_BUTTON}
    sleep       2s

