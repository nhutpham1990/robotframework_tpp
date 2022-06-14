*** Setting ***
Library   SeleniumLibrary
Library   RequestsLibrary
Library   JSONLibrary
Library   Collections
Library   String
Library   OperatingSystem
Resource  ../../Step_Definition/KW_api.robot

*** Variables ***
${URL_base}  https://mpl-api.tpptechnology.com
${URi_1}     /auth/dashboard/login
${URi_2}     /api/Admin/Developers

*** Test Cases ***
ABC_API
  Post_Accesstoken
