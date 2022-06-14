*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${valid_email}                  tao.dang@tpptechnology.com
${valid_password}               tppPassword2021
${invalid_email}                taodang@gmail.com
${invalid_password}             abc2022
${error_message_Unknow}         Unknown Error Occured
${error_message_incorrect}      Username or password is incorrect

*** Keywords ***
