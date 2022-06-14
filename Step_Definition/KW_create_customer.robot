*** Settings ***
Library  SeleniumLibrary
Resource  ../Objects/create_customer_screen.robot

*** Variables ***


*** Keywords ***
Click_User_Button
  Wait Until Element Is Visible    ${user_button}
  Click Element    ${user_button}

Wait_User_Button_Visible_And_Click
  [Arguments]  ${user_button_locator}
  Wait Until Element Is Visible    ${user_button_locator}
  Click Element    ${user_button_locator}

Click_Customer_Button
  Click Element    ${customer_button}
  Sleep    ${wait_time}

Click_Plus_Button
  Click Element    ${plus_button}
  Sleep    ${wait_time}

Input_Customer_Information

  #### First Name
  Input Text    ${first_name}    ${valid_first_name}
  #### Last Name
  Input Text    ${last_name}    ${valid_last_name}
  #### Phone Number
  Input Text    ${phone_number}    ${valid_phone_number}
  #### Email
  Input Text    ${email}    ${valid_email_customer}
  #### Password
  Input Password    ${password}    ${valid_password_customer}
  #### Pin
  Input Text    ${pin}    ${valid_pin}
  #### Birthday
  Input Text    ${birthday}    ${valid_birthday}
  #### Chọn Apartment
  Click Element    ${apartment}
  Click Element    ${TPP}
  #### Code
  Input Text    ${code}    ${valid_code}
  #### Alias
  Input Text    ${alias}    ${valid_alias}

Input_Customer_Information_New
  [Arguments]   ${value_first_name}   ${value_last_name}    ${value_phone_number}   ${value_email_customer}   ${value_password_customer}    ${value_pin}    ${value_birthday}   ${name_apartment}   ${value_code}   ${value_alias}
  #### First Name
  Input Text    ${first_name}    ${value_first_name}
  #### Last Name
  Input Text    ${last_name}    ${value_last_name}
  #### Phone Number
  Input Text    ${phone_number}    ${value_phone_number}
  #### Email
  Input Text    ${email}    ${value_email_customer}
  #### Password
  Input Password    ${password}    ${value_password_customer}
  #### Pin
  Input Text    ${pin}    ${value_pin}
  #### Birthday
  Input Text    ${birthday}    ${value_birthday}
  #### Chọn Apartment
  Click Element    ${apartment}
  Click Element    ${name_apartment}
  #### Code
  Input Text    ${code}    ${value_code}
  #### Alias
  Input Text    ${alias}    ${value_alias}

Click_Create_Button
  Click Element    ${create_button}
  Sleep    ${wait_time}

Verify_PopUp
  Wait Until Element Contains    ${confirm_popup}    ${valid_confirm_text}

Click_Ok_Button
  Click Element    ${ok_button}
  Sleep    ${wait_time}

Verify_Customer_Info
  Wait Until Element Contains    ${email_info}    ${valid_email_customer}
Verify_Customer_Info_New
  [Arguments]   ${email_info_locator}       ${email_customer}
  Wait Until Element Contains    ${email_info_locator}    ${email_customer}
