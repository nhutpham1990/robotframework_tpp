*** Settings ***
Documentation    Get Element
Library          SeleniumLibrary
Library          String
Resource         ../../Step_Definition/KW_login.robot
Resource         ../../Step_Definition/KW_create_customer.robot
Force tags       1.0

*** Variables ***

*** Test Cases ***
TC_00-Get_Element_Web
  [documentation]    User can get element in the web
  [tags]    1.0.0
  Navigate_to_the_web_and_login_successfully
  Click_User_Button
  Wait_User_Button_Visible_And_Click
  Click_Customer_Button
  ${element}=      Get Element Attribute    //button[contains(text(),'Search')]    id
  Log To Console    ${element}

*** Keywords ***
