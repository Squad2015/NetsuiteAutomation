*** Settings ***
Library     Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/Create Project/1. Create Project Page.robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/Create Project/2. Create Project Location Page.robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/Create Project/3. Create BOQ Page.robot


*** Keywords ***

Create Project
    Choose custom form
    Create project name & public name
    Choose project type
    Choose project status
    Choose project charter
    Set customer
    Select project in charge
    Set project dates
    Save the project

Create Project Location for the project
    create project location page

Create BOQ
    Select BOQ Approver
    Select Project Subsystems and Activities
    Save as draft
    BOQ alert text should be ok
    Submit for Approval
    Manage BOQ
    Approve BOQ
    Set pin - BOQ Approver
