*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot


*** Keywords ***

Login using email and password
    input text  ${EMAIL}    ${EMAIL_EMAIL}
    input password      ${PASSWORD}     ${PASSWORD_PASSWORD}
    click button        ${BUTTON}

Set authentication answer
    input password      ${AUTHENTICATION_FIELD}     ${AUTHENTICATION_KEY_name}
    click button        ${AUTHENTICATION_BUTTON}

