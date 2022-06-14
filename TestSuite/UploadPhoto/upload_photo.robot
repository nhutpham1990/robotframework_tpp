*** Settings ***
Library  SeleniumLibrary
# Library  OperatingSystem

*** Variables ***

*** Test Cases ***
Upload_photo_successfully
  Open Browser    https://www.ilovepdf.com/vi/jpg-sang-pdf    Chrome
  Choose File   //*[@type="file"]   C:/Python/Test_Project/TestSuite/UploadPhoto/hinh-nen-dien-thoai-1-1-1.jpg

# Upload_photo_successfully
#     Open Browser  https://the-internet.herokuapp.com/upload  Chrome
#     Wait Until Element Is Visible  id:file-submit  timeout=5
#     Choose File  id:file-upload  C:/Python/Test_Project/TestSuite/UploadPhoto/hinh-nen-dien-thoai-1-1-1.jpg
#     Click Element  id:file-submit
#     Element Text Should Be  tag:h3  File Uploaded!  timeout=5
#     Element Text Should Be  id:uploaded-files  sunset.jpg  timeout=5


*** Keywords ***
