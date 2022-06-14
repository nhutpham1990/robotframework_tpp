*** Settings ***
Library     SeleniumLibrary
Resource    ../Test_Project/Step_Definition/KW_common.robot
Resource    ../Test_Project/Step_Definition/KW_login.robot
Resource    ../Test_Project/Step_Definition/KW_create_customer.robot
Resource    ../Test_Project/Step_Definition/KW_edit_customer_accountTopupLevel.robot
Resource    ../Test_Project/Step_Definition/KW_delete_customer.robot
Suite Setup  Navigate_to_the_web_and_login
Suite teardown  Close Window
Library     Selenium2Library

*** Variables ***

*** Test Cases ***
TC01_Create_a new_customer_successfully
  The customer isn't created before
  Click_User_Button
  Click_Customer_Button
  Click_Plus_Button
  Input_Customer_Information
  Click_Create_Button
  Verify_PopUp
  KW_create_customer.Click_Ok_Button
  Verify_Customer_Info


# TC02_Edit_created_customer_for_changing_"Account_TopUp_Level"
#   Search_Customer
#   Click_Edit_Button
#   Change_AccountTopUpLevel
#   Click_Update_Button
#   Verify_This_customer_has_been_updated
#   KW_edit_customer_accountTopupLevel.Click_OK_Button
#   Verify_New_AccountTopUpLevel

# TC03_Delete_customer_successfully
#   Search_Customer
#   Click_X_Button
#   Click_Yes_Button
#   Verify_This_Customer_Has_Been_Deleted
#   KW_delete_customer.Click_Ok_Button
#   Verify_This_User_Is_Deleted

*** Keywords ***
