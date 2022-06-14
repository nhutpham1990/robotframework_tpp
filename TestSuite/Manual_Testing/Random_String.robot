*** Settings ***
Library  SeleniumLibrary
Library  String
resource  ../Test_Project/Objects/login_screen.robot

*** Variables ***
${LOWER}          qwertyuiopasdfghjklzxcvbnm
${UPPER}          QWERTYUIOPASDFGHJKLZXCVBNM
${LETTERS}        ${LOWER}${UPPER}
${NUMBERS}        1234567890

*** Test Case ***
login
  Open Browser    ${url}    ${ENV_web}
  Maximize Browser Window
  ${result} =  Generate Random String  8   ${NUMBERS}${LETTERS}
  Input Text    ${email_field}  ${result}
