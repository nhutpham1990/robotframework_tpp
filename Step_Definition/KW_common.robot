*** Settings ***
Library  SeleniumLibrary
Resource  ../Objects/common_objects.robot

*** Variables ***

*** Keywords ***
Search_Customer
  Click Element    ${search_filter}
  Click Element    ${email_type}
  Input Text       ${search_field}    ${search_text}
  Click Element    ${search_button}
  Wait Until Element Is Visible    ${email_field_customer}

Search_Customer_New
  [Arguments]   ${object_filter}    ${value_filter}
  Click Element    ${search_filter}
  Click Element    ${object_filter}
  Input Text       ${search_field}    ${value_filter}
  Click Element    ${search_button}
  Wait Until Element Is Visible    ${email_field_customer}
