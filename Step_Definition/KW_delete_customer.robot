*** Settings ***
Library  SeleniumLibrary
Resource  ../Objects/common_objects.robot
Resource  ../Objects/delete_customer_screen.robot

*** Variables ***

*** Keywords ***
Click_X_Button
  Click Element    ${x_button}

Click_Yes_Button
  Click Element    ${yes_button}

Verify_This_Customer_Has_Been_Deleted
  Wait Until Element Contains    ${delete_confirm_popup}    ${valid_delete_confirm_text}

Click_Ok_Button
  Click Element    ${ok_button}

Verify_This_User_Is_Deleted
  Wait Until Page Does Not Contain Element    ${deleted_value}
