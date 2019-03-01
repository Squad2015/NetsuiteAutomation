*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot


*** Keywords ***

PSC Project In-Charge Requester
    mouse over          ${CHANGE_ROLE}
    sleep       1s
    mouse over          ${ROLE_PSC_PROJECT_IN_CHARGE_REQUESTER}
    sleep       1s
    click element       ${ROLE_PSC_PROJECT_IN_CHARGE_REQUESTER}
    sleep       1s

PSC Warehouse Head
    mouse over          ${CHANGE_ROLE}
    sleep       1s
    mouse over          ${ROLE_PSC_WAREHOUSE_HEAD}
    sleep       1s
    click element       ${ROLE_PSC_WAREHOUSE_HEAD}
    sleep       1s


PSC Purchaser
    mouse over          ${CHANGE_ROLE}
    sleep       1s
    mouse over          ${ROLE_PSC_PURCHASER}
    sleep       1s
    click element       ${ROLE_PSC_PURCHASER}
    sleep       1s

PSC A/P Accounting
    mouse over          ${CHANGE_ROLE}
    sleep       1s
    mouse over          ${ROLE_PSC_A/P_ACCOUNTING}
    sleep       1s
    click element       ${ROLE_PSC_A/P_ACCOUNTING}
    sleep       1s

PSC Cost Approver
    mouse over          ${CHANGE_ROLE}
    sleep       1s
    mouse over          ${ROLE_PSC_COST_APPROVER}
    sleep       1s
    click element       ${ROLE_PSC_COST_APPROVER}
    sleep       1s
