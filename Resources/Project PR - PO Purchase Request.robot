*** Settings ***
Library     Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/Change Role.robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/Center Tab.robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/PR-PO Purchase Request/1. Create PRP Page.robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/PR-PO Purchase Request/2. Create MRF Page.robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/PR-PO Purchase Request/3. Create PR (WH).robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/PR-PO Purchase Request/4. PR Approval (CA).robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/PR-PO Purchase Request/5. Create PO (Purchaser).robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/PR-PO Purchase Request/6. PO Approval (Purchaser).robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/PR-PO Purchase Request/7. Creating IR (WH).robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/PR-PO Purchase Request/8. Creating (3) AutoTransac (PICR).robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/PR-PO Purchase Request/9. Creating Vendor Bill (AP Accounting).robot
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Page Object/PR-PO Purchase Request/10. Creating Bill Payment (AP Accounting).robot


*** Keywords ***

Creating PP and PRP
    Click procurement plan button
    Click new procurement item
    Set bill of quantity - BQI NUM
    Set EYM Item - Test Item
    Set quantity - Test Quantity
    Set amount - Test Amount
    Save PRP

Creating MRF
    Click Request Item
    Create MRF

Changing Role to Warehouse Head
    PSC Warehouse Head

Creating PR
    Refresh Dashboard
    Locate MRF
    Click PR Request Button

Changing Role to Cost Approver
    PSC Cost Approver

Navigate Center Tab to List of Purchase Requisition
   (CA Role) Navigate Center Tab - Purchase Requisition

Approving Purchase Request
    View PR Requisition (Approval)
    Approve PR Requisition
    Set BOQ Approver Pin
    Submbit

Changing Role to Purchaser
    PSC Purchaser

Navigate Center Tab to List of PR
    (P Role) Navigate Center Tab - PR Lists

Creating PO
    View PR Requisition (Create PO)
    Click Create PO Button
    Set Test Vendor
    Click PO Checkbox
    Click PO Submit Button
    Click Refresh Button

Navigate Center Tab to List of PO
    (P Role) Navigate Center Tab - PO Lists

View PO and Editing Repeat Order Status
    View PO Number
    Click PO Edit Button
    Set Repeat Order Value
    Click PO Save Button

Approve PO - Submit for Approval
    Click Sumbit Approval Button
    Click Approve Button (New Approver)
    Set Pin Approver (1st New Approver)
    Click Approve Button (2nd New Approver)
    Set Pin Approver (2nd New Aprrover)

Creating IR
    View PO Date
    Click Receive Button
    Set Location IR
    Set Bin
    Set Quantity
    Click Add Button
    Click Ok Button
    Input Customer: Project Code
    Click IR Save Button

Changing Role to Project In-Charge Requester
    PSC Project In-Charge Requester

Creating 3 Automation Transactions
    View IR
    Click Confirm Acceptance Button
    Set Pin (Project In Charge)
    Click Submit Button

Changing Role to A/P Accounting
    PSC A/P Accounting

Navigate Center Tab to List of PO (AP)
    (A/P Accounting) Navigate Center Tab PO List

Creating Vendor Bill (A/P Accounting)
    View Pending Bill
    Click Bill Button
    Click Item Location Arrow
    Set Location
    Select Location
    Click Item Location
    Search Item Location
    Click Search Button
    Select Item Location
    Click Save Button

Creating Bill Payment
    View Bill Payment
    Click Make Payment Button
    Set Remarks
    Click Bill Save Button
