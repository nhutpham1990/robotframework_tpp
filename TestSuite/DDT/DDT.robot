*** Settings ***
Library  SeleniumLibrary
Resource  ../Test_Project/Objects/login_screen.robot
Resource  ../Test_Project/Data_Files/data_login.robot
Test teardown  Close Browser
Test Template  login_admin_error_scenarios

*** Variables ***

*** Test Cases ***                                                EMAIL                           PASSWORD               ERROR_MESSAGE
TC_01_Verify_login_fail - Blank_email_and_valid_password          ${EMPTY}                        ${valid_password}      ${error_message_Unknow}
TC_02_Verify_login_fail - Invalid_email_and_invalid_password      ${invalid_email}                ${invalid_password}    ${error_message_incorrect}
TC_03_Verify_login_fail - Valid_email_and_invalid_password        ${valid_email}                  ${invalid_password}    ${error_message_incorrect}
TC_04_Verify_login_fail - Valid_email_and_blank_password          ${valid_email}                  ${EMPTY}               ${error_message_Unknow}
TC_05_Verify_login_fail - Invalid_email_and_valid_password        ${invalid_email}                ${valid_password}      ${error_message_incorrect}
TC_06_Verify_login_fail - Blank_email_and_blank_password          ${EMPTY}                        ${EMPTY}               ${error_message_Unknow}
TC_06_Verify_login_fail - Blank_email_and_blank_password          asdfad@gmail.com                        dkjalkdf               username or password incorrect

*** Keywords ***
login_admin_error_scenarios
  [Arguments]                        ${email_invalid_value}       ${password_invalid_value}       ${error_message}
  Open Browser                       ${url}                       ${ENV_web}
  Maximize Browser Window
  Input Text                         ${email_field}               ${email_invalid_value}
  Input Password                     ${password_field}            ${password_invalid_value}
  Click Element                      ${login_button}
  Sleep                              ${sleep}
  Page Should Contain                ${error_message}
