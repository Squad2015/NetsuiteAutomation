*** Settings ***
Library     Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Common.robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/Login Page.robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/Center Tab.robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Create Project.robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Project PR - PO Purchase Request.robot

Suite Setup          Start web test
Suite Teardown       Close web test
Documentation        This is the proccess of PR-PO Purchase Request

*** Test Cases ***

Login in NetSuite
    Login using email and password
    Set authentication answer

Create Project [PICR]
   [Tags]          N1
   (PICR Role) Navigate Center Tab - New Project
   Create Project
   Create Project Location for the project
   Create BOQ
   Creating PP and PRP
   Creating MRF
# ----------------------------------------------------------------------------------------------------------------------

Create PR [Warehouse Head Role]
   [Tags]          N2
   Changing Role to Warehouse Head
   Creating PR
# ----------------------------------------------------------------------------------------------------------------------

Approve PR [CA Role]
    [Tags]          N3
    Changing Role to Cost Approver
    (CA Role) Navigate Center Tab - Purchase Requisition
    Approving Purchase Request
# ----------------------------------------------------------------------------------------------------------------------

Create PO and Approve PO [Purchaser Role]
   [Tags]          N4
   Changing Role to Purchaser
   (P Role) Navigate Center Tab - PR Lists
   Creating PO
   (P Role) Navigate Center Tab - PO Lists
   View PO and Editing Repeat Order Status
   Changing Role to Cost Approver
   (CA Role) Navigate Center Tab - Purchase Orders
   Approve PO - Submit for Approval
# ----------------------------------------------------------------------------------------------------------------------

Create IR [Warehouse Head Role]
    [Tags]          N5
    Changing Role to Warehouse Head
    (WH Role) Navigate Center Tab - PO Lists
    Creating IR
# ----------------------------------------------------------------------------------------------------------------------

Create 3 Automation Transaction [PICR Role]
    [Tags]          N6
    Changing Role to Project In-Charge Requester
    (PICR Role) Navigate Center Tab - Receive Order Lists
    Creating 3 Automation Transactions
# ----------------------------------------------------------------------------------------------------------------------

Create Bill
    [Tags]          N7
   # Changing Role to A/P Accounting
    Navigate Center Tab to List of PO (AP)
    Creating Vendor Bill (A/P Accounting)
    (A/P Accounting) Navigate Center Tab Bill List
    Creating Bill Payment
    Take SS