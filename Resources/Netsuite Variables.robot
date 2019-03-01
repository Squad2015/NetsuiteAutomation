*** Variables ***

#Common - Open Website
${BROWSER}     chrome
${URL}         https://system.netsuite.com/pages/customerlogin.jsp?country=US
#=======================================================================================================================
#=======================================================================================================================

#                                    ===== LOGIN PAGE ====
#Login Varialbles - Text Fields
${EMAIL}                             //*[@id="userName"]
${PASSWORD}                          //*[@id="password"]
#Login Button
${BUTTON}                            //*[@id="submitButton"]
#Login Inputs
${EMAIL_EMAIL}                       dmoralde.excelym@gmail.com
${PASSWORD_PASSWORD}                 excelym#ojt2
#Authentication
${AUTHENTICATION_FIELD}              //*[@id="null"]
${AUTHENTICATION_BUTTON}             //input[@type="submit" and @name="submitter"]
#Aunthentication Answer
${AUTHENTICATION_KEY_nickname}       nickname
${AUTHENTICATION_KEY_child}          child
${AUTHENTICATION_KEY_name}           name

#=======================================================================================================================

#                                ======CHANGE ROLE PAGE ====
#Roles -------
${CHANGE_ROLE}                              //a[contains(@href,'/app/center/myroles.nl')]//div[contains(@class,'ns-icon')]
${ROLE_PSC_PURCHASER}                       //span[contains(text(),'PSC Purchaser')]
${ROLE_PSC_PROJECT_IN_CHARGE_REQUESTER}     //span[contains(text(),'PSC Project In-Charge Requester')]
${ROLE_PSC_WAREHOUSE_HEAD}                  //span[contains(text(),'PSC Warehouse Head')]
${ROLE_PSC_A/P_ACCOUNTING}                  //span[contains(text(),'PSC A/P Account')]
${ROLE_PSC_COST_APPROVER}                   //span[contains(text(),'PSC Cost Approver')]

#=======================================================================================================================

#                                       ==== CENTER TAB PAGE ====
#*Project In-Charge Requester Role*#
#--- Center Tab ---#
#List - Relationship - Projects - New
${CT_LIST}                                  //span[(text() = 'Lists' or . = 'Lists')]
${CT_RELATIONSHIPS}                         //span[(text() = 'Relationships' or . = 'Relationships')]
${CT_PROJECTS}                              //span[(text() = 'Projects' or . = 'Projects')]
${CT_CREATE_NEW_PROJECT}                    //a[@href = '/app/accounting/project/project.nl?whence=' and (text() = 'New' or . = 'New')]

#Cost Approver Role#
#MD Transactions - Purchases - Approve Purchase Requistions
${CA_MD_TRANSACTIONS}                       //a[@href='/app/center/card.nl?sc=20&whence=']//span[contains(text(),'MD Transactions')]
${CA_PURCHASES}                             //span[contains(text(),'Purchases')]
${CA_ENTER_REQUISITIONS}                    //span[contains(text(),'Requisitions')]

#MD Transactions - Purchases - Approve Purchase Orders
${CA_PURCHASE_ORDERS}                       //span[contains(text(),'Purchase Orders')]

# ----
${CT_PR_LIST}                               //a[@href='/app/accounting/transactions/transactionlist.nl?Transaction_TYPE=PurchReq&whence=']//span[contains(text(),'List')]
${CT_RECEIVE_ORDERS}                        //span[contains(text(),'Receive Orders')]
${CT_RO_LIST}                               //a[@href='/app/accounting/transactions/transactionlist.nl?Transaction_TYPE=ItemRcpt&whence=']
${CT_TRANSACTION}                           //*[@id="ns-header-menu-main-item0"]/a
${CT_PURCHASES}                             //span[contains(text(),'Purchases')]

#*Purchaser*#
#Vendors > Purchases > Enter Requisitions>Lists
${P_VENDORS}                                //span[contains(text(),'Vendors')]
${P_PURCHASES}                              //span[contains(text(),'Purchases')]
${P_ENTER_REQUISITION}                      //span[contains(text(),'Enter Requisitions')]
${P_LISTS}                                  //a[@href='/app/accounting/transactions/transactionlist.nl?Transaction_TYPE=PurchReq&whence=']

#Vendors > Purchases > Enter Purchase Orders>List
${P_ENTER_PO}                               //span[contains(text(),'Enter Purchase Orders')]
${P_ENTER_PO_LIST}                          //a[@href='/app/accounting/transactions/transactionlist.nl?Transaction_TYPE=PurchOrd&whence=']

#*Warehouse Head
#Receiving > Receiving > Enter Purchase Orders > List
${WH_RECEIVING_MAIN}                        //a[@href='/app/center/card.nl?sc=-31&whence=']//span[contains(text(),'Receiving')]
${WH_RECEIVING}                             //li[@id='ns-header-menu-main-item9']//span[contains(text(),'Receiving')]
${WH_ENTER_PO}                              //span[contains(text(),'Enter Purchase Orders')]
${WH_ENTER_PO_LIST}                         //a[@href="/app/accounting/transactions/transactionlist.nl?Transaction_TYPE=PurchOrd&whence="]

#*A/P Accounting
#Transactions > Purchases > Receive Orders > List
${AP_VENDORS}                               //body[contains(@class,'ext-webkit ext-chrome')]/div[@id='pageContainer']/div[@id='div__header']/div[@id='ns_navigation']/ul[@id='ns-header-menu-main']/li[@id='ns-header-menu-main-item3']/a/span[1]
${AP_PURCHASES}                             //span[contains(text(),'Purchases')]
${AP_ENTER_PO}                              //span[contains(text(),'Enter Purchase Orders')]
${AP_ENTER_PO_LIST}                         //*[@href="/app/accounting/transactions/transactionlist.nl?Transaction_TYPE=PurchOrd&whence="]

#Vendors > Purchases > Enter Bills > List
${AP_ENTER_BILLS}                           //span[contains(text(),'Enter Bills')]
${AP_ENTER_BILLS_LIST}                      //a[@href="/app/accounting/transactions/transactionlist.nl?Transaction_TYPE=VendBill&whence="]

#=======================================================================================================================

#                                        ===== CREATE PROJECT PAGE ====
#Create New Project --
#-----------------------------------------------------------------------------------------------------------------------

#Custom Forms --
${CUSTOM_FORM}                              //*[@id="inpt_customform1"]
${CUSTOM_ARROW}                             //img[@src = '/uirefresh/img/field/dropdown.png' and @alt = 'More Options' and @id = 'inpt_customform1_arrow']

# PSC Procurement Plan Form -
${PSC_PPF}                                  //div[@id = 'nl1' and (text() = 'PSC Procurement Plan Form' or . = 'PSC Procurement Plan Form')]
# PSC Project Form -
${PSC_PF}                                   //div[@id = 'nl2' and (text() = 'PSC Project Form' or . = 'PSC Project Form')]
# Standard Project Form -
${PSC_SPF}                                  //div[@id = 'nl3' and (text() = 'Standard Project Form' or . = 'Standard Project Form')]
#-----------------------------------------------------------------------------------------------------------------------

#Project name - Eym
${EYM_PROJECT_NAME}                         eym_ojt_automationtest85
#Project Name
${PROJECT_NAME}                             //input[@id='companyname']
#Public Name
${PUBLIC_NAME}                              //input[@id='custentity_eym_pro_pubname']
#-----------------------------------------------------------------------------------------------------------------------

#Project Type
${PROJECT_TYPE}                             //*[@id="inpt_custentity_eym_proj_type2"]
${PROJECT_TYPE_ARROW}                       //*[@id="inpt_custentity_eym_proj_type2_arrow"]

#By Admin
${BY_ADMIN}                                 //div[@id='nl5']
#Cost Plus
${COST_PLUS}                                //div[@id='nl6']
#Others
${OTHERS}                                   //div[@id='nl7']
#Standard
${STANDARD}                                 //div[@id='nl8']
#-----------------------------------------------------------------------------------------------------------------------

#Project Status
${PROJECT_STATUS}                           //*[@id="inpt_entitystatus3"]
${PROJECT_STATUS_ARROW}                     //*[@id="inpt_entitystatus3_arrow"]

#Awarded
${AWARDED}                                  //div[@id='nl10']
#Bidding
${BIDDING}                                  //div[@id='nl11']
#Closed
${CLOSED}                                   //div[@id='nl12']
#In Progress
${IN_PROGRESS}                              //div[@id='nl13']
#Lost
${LOST}                                     //div[@id='nl14']
#Under Warranty
${UNDER_WARRANTY}                           //div[@id='nl15']
#-----------------------------------------------------------------------------------------------------------------------

#Customeer
${CUSTOMER}                                 //*[@id="parent_display"]
${EYM_CUSTOMER}                             EYM Test Customer
${CUSTOMER_ARROW}                           //*[@id="parent_actionbuttons_parent_fs"]/a[2]
${CUSTOMER_LIST}                            //*[@id="parent_popup_list"]
${CUSTOMER_SEARCH_BOX}                      //*[@id="st"]
${CUSTOMER_SEARCH_BUTTON}                   //*[@id="Search"]
${CUSTOMER_CLICK}                           //*[@id="inner_popup_div"]/table/tbody/tr[1]/td[2]/a
#-----------------------------------------------------------------------------------------------------------------------

#Project Charter
${PROJECT_CHARTER}                          //*[@id="custentity_eym_proj_charter_display"]
${PROJECT_CHARTER_ARROW}                    //*[@id="parent_actionbuttons_custentity_eym_proj_charter_fs"]
${PROJECT_CHARTER_LIST}                     //*[@id="custentity_eym_proj_charter_popup_list"]
${PROJECT_CHARTER_SEARCHBOX}                //*[@id="st"]
${PROJECT_CHARTER_BUTTON}                   //*[@id="Search"]
${PROJECT_CHARTER_FILE}                     EYM - excel test file - 1.xlsx
${PROJECT_CHARTER_CLICK}                    //*[@id="inner_popup_div"]/table/tbody/tr[2]/td[2]/a
#-----------------------------------------------------------------------------------------------------------------------

#Project Overview
${PROJECT_IN_CHARGE_EYM}                    PSC Cost Approver
${PROJECT_IN_CHARGE_ARROW}                  //*[@id="parent_actionbuttons_custentity_eym_proj_in_charge_fs"]/a[2]
${PROJECT_IN_CHARGE_LIST}                   //*[@id="custentity_eym_proj_in_charge_popup_list"]
${PROJECT_IN_CHARGE_SEARCH_BAR}             //*[@id="st"]
${PROJECT_IN_CHARGE_SEARCH_BUTTON}          //*[@id="Search"]
${PROJECT_IN_CHARGE_NAME}                   //*[@id="inner_popup_div"]/table/tbody/tr/td[2]/a
#-----------------------------------------------------------------------------------------------------------------------

#Project Dates
${PROJECT_DATES_START_DATE}                 //*[@id="startdate"]
${PROJECT_DATES_BID_DATE}                   //*[@id="custentity_eym_proj_biddate"]
${PROJECT_DATES_BID_AWARD_DATE}             //*[@id="custentity_eym_proj_awrddate"]
${PROJECT_DATES_DATE}                       9/24/2018
#-----------------------------------------------------------------------------------------------------------------------

#Project - Buttons - Up
${CREATE_PROJECT_BUTTON_SAVE_UP}            //*[@id="btn_multibutton_submitter"]
${CREATE_PROJECT_BUTTON_CANCEL_UP}          //*[@id="_cancel"]
${CREATE_PROJECT_BUTTON_RESET_UP}           //*[@id="resetter"]

#Project - Buttons - Down
${CREATE_PROJECT_BUTTON_SAVE_DOWN}          //*[@id="btn_secondarymultibutton_submitter"]
${CREATE_PROJECT_BUTTON_CANCEL_DOWN}        //*[@id="secondary_cancel"]
${CREATE_PROJECT_BUTTON_RESET_DOWN}         //*[@id="secondaryresetter"]
#-----------------------------------------------------------------------------------------------------------------------

#Get Text Variables
${PROJECT_NAME_LOCATION}                    //*[@id="main_form"]/table/tbody/tr[1]/td/div[1]/div[4]
${TOP_SEARCH_BAR}                           //*[@id="_searchstring"]
${CREATE_PROJECT_VERIFICATION}              //div[@class='uir-alert-box confirmation session_confirmation_alert']

#=======================================================================================================================

#                       ==== CREATE PROJECT LOCATION PAGE ====
${CREATE_PROJECT_LOCATION_BUTTON}           //input[@id='custpage_project_loc_btn']
${INPUT_PROJECT_LOCATION}                   //*[@id="custpage_cl_location"]
${PROJECT_TEST_LOCATION}                    ${EYM_PROJECT_NAME}
${PROJECT_LOCATION_SAVE_BUTTON}             //input[@id='btnSave']

#=======================================================================================================================

#                           === CREATE BOQ PAGE ====
${CREATE_BOQ_BUTTON}                        //*[@id="custpage_createboq_btn"]
${BOQ_APPROVER_LIST}                        //select[@id='selBoqApprover']
${BOQ_APPROVER_COST_APPROVER}               //*[@id="selBoqApprover"]/option[14]
${BOQ_PROJECT_SUBSYSTEMS_.0}                //div[@id='heading1']/table/thead/tr/th/h5/div/div/button/i
${BOQ_SAVEASDRAFT_BUTTON}                   //input[@id='btnSaveDraft']
${BOQ_SUBMIT_APPROVAL_BUTTON}               //input[@id='btnApproval']
${BOQ_MANAGE_BOQ_BUTTON}                    //input[@id='custpage_manageboq_btn']
${BOQ_APPROVE_BOQ_BUTTON}                   //input[@id='btnApprove']
${BOQ_RETURN_BOQ_BUTTON}                    //input[@id='btnReturn']
${BOQ_BACK_BUTTON}                          //input[@id='btnBack']
${BOQ_ALERT_TEXT}                           BOQ Template Saved

#-----------------------------------------------------------------------------------------------------------------------
#                       === PROJECT SUBSYSTEM AND ACTIVITIES PAGE ===
#PO1 -----
${PO1_MATERIAL}                             //*[@id="class-1-1-1"]
${PO1_LABOR_ADMIN}                          //*[@id="class-2-1-1"]
${PO1_EQUIPMENT}                            //*[@id="class-4-1-1"]
${PO1_SUBCON}                               //*[@id="class-3-1-1"]
${PO1_MATERIAL_WITH_LABOR}                  //*[@id="class-5-1-1"]
${PO1_GENERAL_REQUIREMENTS}                 //*[@id="class-6-1-1"]
#PO2 -----
${PO2_MATERIAL}                             //*[@id="class-1-1-2"]
${PO2_LABOR_ADMIN}                          //*[@id="class-2-1-2"]
${PO2_EQUIPMENT}                            //*[@id="class-4-1-2"]
${PO2_SUBCON}                               //*[@id="class-3-1-2"]
${PO2_MATERIAL_WITH_LABOR}                  //*[@id="class-5-1-2"]
${PO2_GENERAL_REQUIREMENTS}                 //*[@id="class-6-1-2"]
#PO3
${PO3_MATERIAL}                             //*[@id="class-1-1-3"]
${PO3_LABOR_ADMIN}                          //*[@id="class-2-1-3"]
${PO3_EQUIPMENT}                            //*[@id="class-4-1-3"]
${PO3_SUBCON}                               //*[@id="class-3-1-3"]
${PO3_MATERIAL_WITH_LABOR}                  //*[@id="class-5-1-3"]
${PO3_GENERAL_REQUIREMENTS}                 //*[@id="class-6-1-3"]
#PO4
${PO4_MATERIAL}                             //*[@id="class-1-1-4"]
${PO4_LABOR_ADMIN}                          //*[@id="class-2-1-4"]
${PO4_EQUIPMENT}                            //*[@id="class-4-1-4"]
${PO4_SUBCON}                               //*[@id="class-3-1-4"]
${PO4_MATERIAL_WITH_LABOR}                  //*[@id="class-5-1-4"]
${PO4_GENERAL_REQUIREMENTS}                 //*[@id="class-6-1-4"]
#PO5
${PO5_MATERIAL}                             //*[@id="class-1-1-5"]
${PO5_LABOR_ADMIN}                          //*[@id="class-2-1-5"]
${PO5_EQUIPMENT}                            //*[@id="class-4-1-5"]
${PO5_SUBCON}                               //*[@id="class-3-1-5"]
${PO5_MATERIAL_WITH_LABOR}                  //*[@id="class-5-1-5"]
${PO5_GENERAL_REQUIREMENTS}                 //*[@id="class-6-1-5"]
#PO6
${PO6_MATERIAL}                             //*[@id="class-1-1-6"]
${PO6_LABOR_ADMIN}                          //*[@id="class-2-1-6"]
${PO6_EQUIPMENT}                            //*[@id="class-4-1-6"]
${PO6_SUBCON}                               //*[@id="class-3-1-6"]
${PO6_MATERIAL_WITH_LABOR}                  //*[@id="class-5-1-6"]
${PO6_GENERAL_REQUIREMENTS}                 //*[@id="class-6-1-6"]
#PO7
${PO7_MATERIAL}                             //*[@id="class-1-1-7"]
${PO7_LABOR_ADMIN}                          //*[@id="class-2-1-7"]
${PO7_EQUIPMENT}                            //*[@id="class-4-1-7"]
${PO7_SUBCON}                               //*[@id="class-3-1-7"]
${PO7_MATERIAL_WITH_LABOR}                  //*[@id="class-5-1-7"]
${PO7_GENERAL_REQUIREMENTS}                 //*[@id="class-6-1-7"]
#PO8
${PO8_MATERIAL}                             //*[@id="class-1-1-8"]
${PO8_LABOR_ADMIN}                          //*[@id="class-2-1-8"]
${PO8_EQUIPMENT}                            //*[@id="class-4-1-8"]
${PO8_SUBCON}                               //*[@id="class-3-1-8"]
${PO8_MATERIAL_WITH_LABOR}                  //*[@id="class-5-1-8"]
${PO8_GENERAL_REQUIREMENTS}                 //*[@id="class-6-1-8"]
#PO9
${PO9_MATERIAL}                             //*[@id="class-1-1-9"]
${PO9_LABOR_ADMIN}                          //*[@id="class-2-1-9"]
${PO9_EQUIPMENT}                            //*[@id="class-4-1-9"]
${PO9_SUBCON}                               //*[@id="class-3-1-9"]
${PO9_MATERIAL_WITH_LABOR}                  //*[@id="class-5-1-9"]
${PO9_GENERAL_REQUIREMENTS}                 //*[@id="class-6-1-9"]
#PO10
${PO10_MATERIAL}                            //*[@id="class-1-1-10"]
${PO10_LABOR_ADMIN}                         //*[@id="class-2-1-10"]
${PO10_EQUIPMENT}                           //*[@id="class-4-1-10"]
${PO10_SUBCON}                              //*[@id="class-3-1-10"]
${PO10_MATERIAL_WITH_LABOR}                 //*[@id="class-5-1-10"]
${PO10_GENERAL_REQUIREMENTS}                //*[@id="class-6-1-10"]
#PO11
${PO11_MATERIAL}                            //*[@id="class-1-1-11"]
${PO11_LABOR_ADMIN}                         //*[@id="class-2-1-11"]
${PO11_EQUIPMENT}                           //*[@id="class-4-1-11"]
${PO11_SUBCON}                              //*[@id="class-3-1-11"]
${PO11_MATERIAL_WITH_LABOR}                 //*[@id="class-5-1-11"]
${PO11_GENERAL_REQUIREMENTS}                //*[@id="class-6-1-11"]

#For Over Budget Purposes
${BOQ_TEST_QUANTITY_OVERBUDGET}             1
${BOQ_TEST_QUANTITY}                        5000
#-----------------------------------------------------------------------------------------------------------------------
#INPUT PIN | Depends in BOQ Approver
${BOQ_INPUT_PIN}                            xpath=/html[1]/body[1]/div[2]/form[1]/p[2]/input[1]
${BOQ_PIN_APPROVER}                         6666
${BOQ_PIN_OK_BUTTON}                        //input[@id='btnOkPin']

#=======================================================================================================================

#                               ==== CREATE PROCUREMENT PLAN PAGE ====
${PRP_PROCUREMENT_PLAN_BUTTON}              //*[@id="custentity_eym_button_proc_plan_val"]/a
${PRP_NEW_PROCUREMENT_PLAN_ITEM_BUTTON}     //input[@id='newrecrecmachcustrecord_eym_procplan_projcode']
#-----------------------------------------------------------------------------------------------------------------------
${PRP_BILL_OF_QUANTITY_ARROW}               //a[@onclick='uir_showPopupSelectMenu(this);return false;']
${PRP_BILL_OF_QUANTITY_LIST}                //a[@id='custrecord_eym_procplan_bqi_popup_list']
${PRP_BQI_NUM}                              xpath=/html[1]/body[1]/div[6]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[1]/table[1]/tbody[1]/tr[6]/td[1]/div[1]/div[1]/table[1]/tbody[1]/tr[1]/td[2]/a[1]
#-----------------------------------------------------------------------------------------------------------------------
${PRP_ITEM_INPUT}                           //input[@id='custrecord_eym_procplan_item_display']
${PRP_ITEM_ARROW}                           //*[@id="parent_actionbuttons_custrecord_eym_procplan_item_fs"]/a[2]
${PRP_ITEM_LIST}                            //a[@id='custrecord_eym_procplan_item_popup_list']
${PRP_ITEM_SEARCH_BOX}                      //input[@id='st']
${PRP_ITEM_SEARCH_BUTTON}                   //*[@id="Search"]
${PRP_ITEM_EYM}                             EYM Test Item 1
${PRP_ITEM_EYM_CLICK}                       //*[@id="inner_popup_div"]/table/tbody/tr/td[2]/a
#-----------------------------------------------------------------------------------------------------------------------
${PRP_QUANTITY}                             //input[@id='custrecord_eym_procplan_qty_formattedValue']
${PRP_TEST_QUANTITY}                        2
#-----------------------------------------------------------------------------------------------------------------------
${PRP_AMOUNT}                               //input[@id='custrecord_eym_procplan_amt_formattedValue']
${PRP_TEST_AMOUNT}                          100
#-----------------------------------------------------------------------------------------------------------------------
${PRP_SAVE_BUTTON}                          //input[@id='btn_multibutton_submitter']
${PRP_CANCEL_BUTTON}                        //input[@id='btn_multibutton_submitter']
${PRP_RESET_BUTTON}                         //input[@id='resetter']

#=======================================================================================================================

#                               === CREATE REQUEST -- MRF ====
${REQUEST_ITEMS_BUTTON}                     //input[@id='custpage_request_items_btn']
${REQUEST_ALERT_TEXT}                       Items on the PRP are available on other project's excess location. Click OK to proceed with MRF or Cancel to go back to the project record.

#CREATE MRF
${MRF_OPEN_PRP}                             //input[@id='custpage_open_proc_plan_btn']
${MRF_PRP_SEARCH_BUTTON}                    //input[@id='custpage_search']
${MRF_PRP_MARK_ALL_BUTTON}                  //input[@id='custpage_mark_all']
${MRF_PRP_UNMARK_ALL_BUTTON}                //input[@id='custpage_unmark_all']
${MRF_PRP_ALERT_TEXT}                       The maximum items to be selected is 25.
${MRF_PRP_ADD_TO_MRF_BUTTON}                //input[@id='submitter']
${MRF_SUBMIT_BUTTON}                        //input[@id='custpage_submit_btn']

#SAVE|CANCEL|RESET MRF
${MRF_SAVE_BUTTON}                          //input[@id='btn_multibutton_submitter']
${MRF_CANCEL_BUTTON}                        //input[@id='_cancel']
${MRF_RESET_BUTTON}                         //input[@id='resetter']

#=======================================================================================================================
#                                  ==== PR - PO (PURCHASE REQUEST) ====
#                              Prerequisite: Create Procurement Plan or PRP

# Log in as PSC Project In-Charge Requester Go to Transactions > Purchases > Enter Requisitions>Lists
#CREATE PR
${PR_NUMBER}                                //tr[@id='row0']//a[@class='dottedlink'][contains(text(),'View')]
${PR_APPROVE_BUTTON}                        //input[@id='custpage_approve']
${PR_PIN_INPUT}                             //*[@id="custpage_employee_pin"]
${PR_PIN_APPROVE_BUTTON}                    //*[@id="submitPin"]
${PR_APPROVER_EMPLOYEE}                     //*[@id="custpage_employee_name_val"]
#                                   Change role to PSC Purchaser    --
#  Log in as PSC Purchaser Go to Vendors > Purchases > Enter Requisitions>Lists
${PR_VIEW_PR}                               //tr[@id='row0']//a[@class='dottedlink'][contains(text(),'View')]

#CREATE PO
${PO_CREATE_PO_BUTTON}                      //*[@id="createpo"]
${PO_CREATE_PO_VENDOR_INPUT}                //*[@id="items_itemvendor1_display"]
${PO_CREATE_PO_TEST_VENDOR}                 EYM Vendor Test
${PO_CREATE_PO_CHECKBOX}                    //*[@id="itemorder1_fs"]/img
${PO_CREATE_PO_SUBMIT_BUTTON}               //*[@id="submitter"]
${PO_CREATE_PO_REFRESH_BUTTON}              //input[@id='Refresh']
${PO_CREATE_PO_COMPLETE}                    //td[contains(text(),'Complete')]
${PO_OK_BUTTON}                             //*[@id="OK"]
${PO_NUMBER}                                xpath=/html[1]/body[1]/div[1]/div[2]/form[2]/div[2]/table[1]/tbody[1]/tr[2]/td[3]/a[1]
${PO_OK_BUTTON}                             //*[@id="OK"]

#                   TOP NAV ----- Go to Vendors > Purchases > Enter Purchase Orders>List
${VIEW_PO_NUMBER}                           //tr[@id='row0']//a[@class='dottedlink'][contains(text(),'View')]
${PO_EDIT_PO_BUTTON}                        //*[@id="edit"]
${PO_REPEAT_ORDER_ARROW}                    //*[@id="inpt_custbody_eym_po_repeat_order2_arrow"]
${PO_REPEAT_ORDER_INPUT}                    //*[@id="inpt_custbody_eym_po_repeat_order2"]
${PO_REPEAT_ORDER_INPUT_VALUE}              Yes
${PO_SAVE_BUTTON}                           //*[@id="btn_multibutton_submitter"]
${PO_SUBMIT_FOR_APPROVAL_BUTTON}            xpath=/html[1]/body[1]//form[1]//table[1]/tbody[1]/tr[1]/td[13]//input[1]
${PO_APPROVE_BUTTON}                        //input[@id='custpage_forex_approve_btn']
${PO_PIN_INPUT}                             //*[@id="custpage_employee_pin"]
${PO_SUBMIT_PIN_BUTTON}                     //*[@id="submitPin"]
${PO_SUCCESSFULLY_CREATED}                  //div[@class='uir-alert-box confirmation session_confirmation_alert']
${PO_STATUS}                                //div[@class='uir-record-status']
${VIEW_APPROVE_PO_NUMBER}                   //*[@id="row0"]/td[1]/a[2]

#       Login to Warehouse Head Go to Receiving> Enter Purchase Order> List
${PO_WH_PO_DATE_RECEIVE}                    xpath=/html[1]/body[1]//form[2]//tbody[1]/tr[2]/td[1]/a[1]
${PO_RECEIVE_BUTTON}                        //*[@id="receive"]
${IR_ALERT_TEXT}                            Please ensure that each item has a BQI from the related Project. Otherwise, this transaction will not be saved. Click OK to proceed.
${IR_ITEM_LOCATION_INPUT}                   //*[@id="item_location1_display"]
${IR_ITEM_LOCATION_ARROW}                   //*[@id="parent_actionbuttons_item_location1_fs"]/a[2]
${IR_ITEM_LOCATION_LIST}                    //a[@id='location1_popup_list']
${IR_ITEM_LOCATION_SEARCH_INPUT}            //*[@id="st"]
${IR_ITEM_LOCATION_SEARCH_BUTTON}           //*[@id="Search"]
${IR_ITEM_LOCATION_CLICK}                   //a[contains(text(),'Project : Project Staging')]
${IR_ITEM_TEST_LOCATION}                    Project : Project Staging
${IR_INVENTORY_DETAIL_BIN}                  //a[@id='inventorydetail_helper_popup_1']
${IR_BIN_FORM}                              //div[@id='childdrecord']
${IR_BIN_FRAME}                             //iframe[@id='childdrecord_frame']
${IR_BIN_LOCATION_ARROW}                    css:#inpt_binnumber1_arrow
${IR_MAIN_BIN}                              //*[contains(text(),'MAIN-Project Staging')]
${IR_BIN_QUANTITY_FOMR}                     //*[@id="inventoryassignment_splits"]/tbody/tr[2]/td[2]/div
${IR_BIN_QUANTITY_VAL}                      //*[@id="quantity_val"]
${IR_BIN_TEST_QUANTITY}                     //*[@id="quantity_formattedValue"]
${IR_BIN_ADD_BUTTON}                        //*[@id="inventoryassignment_addedit"]
${IR_PROJECT_CODE_ARROW}                    //*[@id="parent_actionbuttons_item_custcol_eym_pur_projcode1_fs"]/a[2]
${IR_PROJECT_CODE_LIST}                     //*[@id="custcol_eym_pur_projcode1_popup_list"]
${IR_PROJECT_CODE_SEARCH}                   //*[@id="st"]
${IR_PROJECT_CODE_SEARH_BUTTON}             //*[@id="Search"]
${IR_PROJECT_CODE_SEARCH_VALUE}             //*[@id="inner_popup_div"]/table/tbody/tr/td[2]/a
${IR_PROJECT_CODE}                          //*[@id="item_custcol_eym_pur_projcode1_display"]
${IR_BIN_SECONDARY_OK_BUTTON}               //*[@id="secondaryok"]
${IR_SAVE_BUTTON}                           //input[@id='secondarysubmitter']

#        Log in as PSC Project In-Charge Requester Go to Transactions > Purchases > Receive Orders > List
${IR_VIEW_IR}                               //*[@id="row0"]/td[1]/a[2]
${IR_CONFIRM_ACCEPTANCE_BUTTON}             //*[@id="custpage_confirmacceptancebutton"]
${IR_PIN_INPUT}                             //*[@id="custpage_employee_pin"]
${IR_SUBMIT_PIN_BUTTON}                     //*[@id="submitter"]
${IR_CUSTOM}                                //a[@id='customtxt']
${IR_CUSTOM1}                               //*[@id="customlnk"]

#       Log in as PSC A/P Accounting Go to Vendors > Purchases > Enter Purchase Orders > List Prerequisite: PO number
${PO_VIEW_PENDING_BILL}                     //tr[@id='row0']//a[contains(@class,'dottedlink')][contains(text(),'View')]
${PO_BILL_BUTTON}                           //*[@id="bill"]
${PO_BILL_ALERT}                            Please ensure that each item has a BQI from the related Project. Otherwise, this transaction will not be saved. Click OK to proceed.
${PO_BILL_LOCATION}                         //*[@id="location_display"]
${PO_BILL_TEST_LOCATION_SELECT}             //*[@id="inner_popup_div"]/table/tbody/tr[1]/td[2]/a
${PO_BILL_LOCATION_ARROW}                   /html[1]/body[1]/div[1]/div[2]/div[3]/form[1]/table[1]/tbody[1]/tr[2]/td[1]/table[1]/tbody[1]/tr[2]//tr[3]/td[2]//span[1]/a[2]
${PO_BILL_LOCATION_LIST}                    //div[@id='location_fs_tooltipMenu']//a[@id='location_popup_list']
${PO_BILL_LOCATION_SEARCH}                  //*[@id="st"]
${PO_BILL_LOCATION_SEARCH_BUTTON}           //*[@id="Search"]

${PO_BILL_ITEM_LOCATION_INPUT1}             //*[@id="item_row_1"]/td[18]
${PO_BILL_ITEM_LOCATION_INPUT}              //*[@id="item_location_display"]
${PO_BILL_ITEM_LOCATION_ARROW}              //*[@id="parent_actionbuttons_item_location_fs"]/a[2]
${PO_BILL_ITEM_LOCATION_LIST}               //div[@id='item_location_fs_tooltipMenu']//a[@id='location_popup_list']
${PO_BILL_ITEM_LOCATION_SEARCH}             //*[@id="st"]
${PO_BILL_ITEM_LOCATION_SELECT}             //*[@id="inner_popup_div"]/table/tbody/tr[1]/td[2]/a
${PO_BILL_ITEM_LOCATION_SEARCH_BUTTON}      //*[@id="Search"]
${PO_BILL_ITEM_LOCATION_ADD}                //input[@id='item_addedit']
${PO_BILL_SAVE_BUTTON}                      //td[@id='spn_secondarymultibutton_submitter']
${PO_BILL_VOUCHER}                          //input[@id='custpage_eym_ap_voucher_button']

# Can use the bin_location_search and button for item location search
${PO_BILL_MAKE_PAYMENT_SAVEBUTTON}          //input[@id='btn_multibutton_submitter']
${PO_BILL_MAKE_PAYMENT_BUTTON}              //*[@id="payment"]
${PO_BILL_REMARKS_INPUT}                    //textarea[@id='custbody_eym_ap_remarks']
${PO_BILL_TEST_REMARKS}                     Full Payment

# Go to Vendors > Purchases > Enter Bills > List
${PO_BILL_VIEW_SAVE_BILL}                   //tr[@id='row0']//a[contains(@class,'dottedlink')][contains(text(),'View')]

#=======================================================================================================================


#                          === CHANGE ROLE -- TO (WAREHOUSE HEAD) -- Stock Request ===
#MRF for Requisition
${WAREHOUSE_MOUSEHOVER}                     xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[5]/div[2]/div[1]/div[1]/h2[1]
#//h2[contains(text(),'MRF for Requisitions')]
${WAREHOUSE_DASHBOARD_REFRESH_BUTTON}       xpath=/html[1]/body[1]/div[1]/div[2]/div[1]/div[1]/div[1]/div[5]/div[2]/div[1]/div[1]/div[1]/span[2]
${WAREHOUSE_DASHBOARD_MRF_VIEW}             //a[contains(text(),'View')]

${CREATE_REQUEST_BUTTON}                    //*[@id="custpage_createrequestbutton"]
${CREATE_REQUEST_SUCCESS}                   //td[contains(text(),'Success')]
#-----------------------------------------------------------------------------------------------------------------------
#Edit if Stock Request
${WH_MRF_EDIT_BUTTON}                       //a[@class='dottedlink'][contains(text(),'Edit')]
${WH_MRF_STOCK_REQUEST_EDIT_INPUT}          //input[@id='custrecord_eym_mrfi_srqty_formattedValue']
${WH_MRF_STOCK_REQUEST_VALUE}               ${PRP_TEST_QUANTITY}
${WH_MRF_STOCK_REQUEST_SAVE_BUTTON}         //input[@id='btn_multibutton_submitter']
#MRF -- Create Request
${WH_MRF_CREATE_REQUEST_BUTTON}             //input[@id='custpage_createrequestbutton']
${WH_MRF_CREATE_REQUEST_STREQ}              //tr[@id='row0']/td/a
#Stock Request from CW - put item location
${WH_STOCK_CW_EDIT_BUTTON}                  //input[@id='edit']
${WH_STOCK_CW_CLICK_ITEM_LOCATION}          //input[@id='item_location_display']
#${WH_STOCK_CW_EDIT_LOCATION_VALUE}         xpath=(//a[@onclick='uir_showPopupSelectMenu(this);return false;'])[6]
#${WH_STOCK_CW_EDIT_LOCATION_LIST}          xpath=(//a[@id='location_popup_list'])[2]
${WH_STOCK_CW_EDIT_LOCATION_SEARCHBOX}      //input[@id='st']
${WH_STOCK_CW_EDIT_TEST_LOCATION}           CW - V. Rama
#${WH_STOCK_CW_EDIT_LOCATION_SEARCHBOX_BUTTON}      //input[@id='Search']
#${WH_STOCK_CW_EDIT_TEST_LOCATION_CLICK}     xpath=(//a[@onclick="setTarget('CW - V. Rama','1'); return false;"])[2]
${WH_STOCK_CW_EDIT_SAVE_BUTTON}             css:#btn_secondarymultibutton_submitter
#-----------------------------------------------------------------------------------------------------------------------
#Fulfill Stock Request
${WH_STREQ_FULFILL_BUTTON}                  //input[@id='process']
${WH_STREQ_FULFILL_ALERT_TEXT}              Customer is 105 days overdue.
${WH_STREQ_FULFILL_SAVE_BUTTON}             //input[@id='btn_multibutton_submitter']
#=======================================================================================================================