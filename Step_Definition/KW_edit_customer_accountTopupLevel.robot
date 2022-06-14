*** Settings ***
Library  SeleniumLibrary
Resource  ../Objects/edit_customer_screen.robot

*** Variables ***

*** Keywords ***
Click_Edit_Button
  Click Element    ${edit_button}
  Sleep    5

Change_AccountTopUpLevel
  Click Element    ${accountTopUpLevel_field}
  Click Element    ${edited_value}

Change_AccountTopUpLevel_New
  [Arguments]   ${accountTopUpLevel_locator}   ${accountTopUpLevel_value}
  Click Element    ${accountTopUpLevel_locator}
  Click Element    ${accountTopUpLevel_value}

Click_Update_Button
  Click Element    ${update_button}
  Sleep    5

Verify_This_customer_has_been_updated
  Wait Until Element Contains    ${edit_confirm_popup}    ${valid_edit_confirm_text}

Click_OK_Button
  Click Element    ${ok_button}

Verify_New_AccountTopUpLevel
  Search_Customer
  Click Element    ${customer_field}
  Sleep    5
  Wait Until Element Contains    ${edited_accountTopUpLevel_field}     ${valid_edited_value}
