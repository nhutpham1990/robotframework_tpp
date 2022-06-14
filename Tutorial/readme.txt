###Lệnh###
robot -d results .\DDT_excel.robot
robot -d results -i [tagName] [file.robot] => run only tất cả testcase có gắn tagName này
robot -d results -e [tagName] [file.robot] => run tất cả testcase ngoại trừ testcase có gắn tagName này

###Template mẫu###
** Settings **
Suite Setup       Local Suite Setup
Suite Teardown    Close Browser
Force Tags        3.4.1
Resource        ../../../selenium2_resource/common_resources/common_UI_resource.txt
Resource        ../../../selenium2_resource/common_resources/common_user_resource.txt
Resource        ../3.1_Portal_Header/portal_header.txt
Library         Selenium2Library
Library         FirecrestLibrary
Library         WebKeywordLibrary

** Test Cases **
3.4.1.1 Check for Logout redirect to login page
    [Documentation]    The PA can select to logout from the portal and will be automatically redirected to the portal Login page.
    [Tags]    3.4.1.1
    [Setup]    Setup UI
    Given I am on portal-ui webpage
    Then log out should be visible
    Capture page Screenshot    Portal_3.4.1.1_PD_SS1.png
    When I click link Log Out
    Then User should be in Login Page
    Capture page Screenshot    Portal_3.4.1.1_PD_SS2.png


** Keywords **
Local Suite Setup
    Browser is opened to ${loginPageLink}
    Maximize Browser Window
    SQL Connect DB
    Delete All Cookies

Setup UI
    Set Cookie On Browser    User-304    PHA0001.firecrestclinical.com    administrator    global,testRealm,auto_administration_realm
--
