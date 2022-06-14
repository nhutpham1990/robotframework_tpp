*** Settings ***
Library  SeleniumLibrary
Resource  ../Objects/login_screen.robot
Resource  ../Data_Files/data_login.robot

*** Variables ***

*** Keywords ***
Navigate_to_the_web_and_login_successfully
  Open Browser    ${url}    ${ENV_web}
  Maximize Browser Window
  Input Text    ${email_field}    ${valid_email}
  Input Password    ${password_field}    ${valid_password}
  Click Element    ${login_button}
  Sleep    5

# login_admin
#   [Arguments]       ${email_value}       ${password_value}
#   Open Browser      ${url}               ${ENV_web}
#   Maximize Browser Window
#   Input Text        ${email_field}       ${email_value}
#   Input Password    ${password_field}    ${password_value}
#   Click Element     ${login_button}
#   Sleep    5
