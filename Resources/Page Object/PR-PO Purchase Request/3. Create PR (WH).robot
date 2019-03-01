*** Settings ***
Library  Selenium2Library
Resource  C:/Users/admin/PycharmProjects/NetsuiteAutomation/Resources/Netsuite Variables.robot


*** Keywords ***

Refresh Dashboard
    mouse over          ${WAREHOUSE_MOUSEHOVER}
    sleep       2s
    click element       ${WAREHOUSE_DASHBOARD_REFRESH_BUTTON}
    sleep       1s

Locate MRF
    mouse over       ${WAREHOUSE_MOUSEHOVER}
    sleep       1s
    click element       ${WAREHOUSE_DASHBOARD_MRF_VIEW}


Click PR Request Button
    click button        ${CREATE_REQUEST_BUTTON}
    sleep       2s
    wait until page contains element            ${CREATE_REQUEST_SUCCESS}


# -------------- FOR Creating Stock Request - CW [NOTE: Edit first the MRF]

Click Edit (For Stock Request)
    click element       ${WH_MRF_EDIT_BUTTON}

Put Value in Stock Request field
    click element       ${WH_MRF_STOCK_REQUEST_EDIT_INPUT}
    input text          ${WH_MRF_STOCK_REQUEST_VALUE}

Click SR Save Button
    click button        ${WH_MRF_STOCK_REQUEST_SAVE_BUTTON}

Click SR Request Button
    click button        ${WH_MRF_CREATE_REQUEST_BUTTON}

Click STREQ
    click element       ${WH_MRF_CREATE_REQUEST_STREQ}

# Editing the STREQ Item Location to CW
Click SR Edit Button
    click element       ${WH_STOCK_CW_EDIT_BUTTON}

Click Item Location field
    click element       ${WH_STOCK_CW_CLICK_ITEM_LOCATION}

Input Item Location
    input text          ${WH_STOCK_CW_EDIT_TEST_LOCATION}

Click SR Item Save Button
    click button        ${WH_STOCK_CW_EDIT_SAVE_BUTTON}



