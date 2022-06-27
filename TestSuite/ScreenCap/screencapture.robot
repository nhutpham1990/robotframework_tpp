*** Settings ***
Documentation    Screen Capture
Force Tags       1.0
Library          SeleniumLibrary
Library          ScreenCapLibrary
Resource         ../../Step_Definition/KW_login.robot


*** Variables ***

*** Test Cases ***
Take a screen shot successfully
    [Documentation]     Capture a screen successfully
    [Tags]              1.0.1
    Navigate_to_the_web_and_login_successfully
    Take Screenshot     name=screenshot    format=png
*** Keywords ***
