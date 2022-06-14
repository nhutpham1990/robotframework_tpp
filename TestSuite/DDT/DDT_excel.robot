*** Settings ***
Library            SeleniumLibrary
Library            DataDriver   file=../../Data_Files/data_login_1.xlsx
Force Tags         1.0
Resource           ../Test_Project/Objects/login_screen.robot
Test teardown      Close Browser
Test Template      login_admin_error_scenarios

*** Variables ***

*** Test Cases ***                   EMAIL                  PASSWORD          ERROR_MESSAGE
TC_01-Login_with_invalid_information       ${email}               ${password}       ${error_message}
  [Documentation]        Verify the invalid information when user logs in
  [tags]                 1.0.1


*** Keywords ***
login_admin_error_scenarios
  [Arguments]                        ${email}               ${password}       ${error_message}
  Open Browser                       ${url}                 ${ENV_web}
  Maximize Browser Window
  Input Text                         ${email_field}         ${email}
  Input Password                     ${password_field}      ${password}
  Click Element                      ${login_button}
  Sleep                              ${sleep}
  Page Should Contain                ${error_message}
