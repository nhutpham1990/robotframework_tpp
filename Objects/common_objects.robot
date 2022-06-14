*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${search_filter}   //*[@id="__layout"]/div/div/div/div[2]/div[2]/div/div[1]/div/form/select
${email_type}    //option[contains(text(),'Email')]
${search_field}   //input[@id='search']
${search_text}    nhut.pham@tpptechnology.com
${search_button}    //button[contains(text(),'Search')]
${email_field_customer}   //td[contains(text(),'nhut.pham@tpptechnology.com')]

*** Keywords ***
