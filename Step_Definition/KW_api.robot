*** Settings ***
Library   SeleniumLibrary
Library   RequestsLibrary
Library   JSONLibrary
Library   Collections
Library   String
Library   OperatingSystem

*** Variables ***

*** Keywords ***
Post_Accesstoken
  Create Session    Post_accesstoken    ${URL_base}
  ${data} =  Create Dictionary    Email=tao.dang@tpptechnology.com      Password=tppPassword2021
  ${reqs_post} =  POST On Session      Post_accesstoken    ${URi_1}   data=${data}
  ${access_token} =  Set Variable       ${reqs_post.json()['accessToken']}

  Create Session    Post_Developer            ${URL_base}
  ${header} =       Create Dictionary         Content-Type=application/json      Authorization=Bearer ${access_token}
  Log To Console    Log header: ${header}
  ${data} =       Get File    myFile.json
  Log To Console    body: ${data}
  ${Response} =      POST On Session     Post_Developer    ${URi_2}   headers=${header}    data=${data}
  Log To Console    Result: ${Response.content}
