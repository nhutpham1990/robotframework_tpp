*** Settings ***
Library   RequestsLibrary
Library   JSONLibrary
Library   Collections


*** Variables ***
${URL_Base}    http://thetestingworldapi.com/

*** Test Cases ***
TC01_Get_Information_Account
  Create Session        API_Student            ${URL_Base}
  ${Get_Response} =     GET On Session         API_Student           api/studentsDetails/1140336
  Log To Console        StatusCode: ${Get_Response}

  ${json_response} =    Set Variable           ${Get_Response.json()}
  Log To Console        JsonResponse: ${json_response}

  # Lấy ra firstname
  ${first_name_data} =  Get Value From Json    ${json_response}      data.first_name
  Log To Console        FirstName: ${first_name_data}

  # Lấy firstname so sánh với expected result
  ${f_name} =           Get From List          ${first_name_data}    0
  Should Be Equal       ${f_name}              test01
  Log To Console        First Name: ${f_name}
