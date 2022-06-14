*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library  JSONLibrary
Library  Collections
*** Variables ***
${URL_POST}   http://thetestingworldapi.com/api
*** Test Cases ***
Post_InformationCustomer
  Create Session    Post_iCustomer    ${URL_POST}
  ${data}=  Create Dictionary    id=0   first_name=test01  middle_name=vn2022  last_name=okfine  date_of_birth=01/01/1992
  ${reqs_post}=  POST On Session      Post_iCustomer    /studentsDetails  data=${data}

  Log To Console    Status Code: ${reqs_post.status_code}
  Log To Console    Data Post: ${reqs_post.content}

  #Validation
  ${status_code_post} =  Convert To String    ${reqs_post.status_code}
  Should Be Equal    ${status_code_post}    201

  ${data_post} =  Convert To String    ${reqs_post.content}
  Should Contain    ${data_post}    test01  
