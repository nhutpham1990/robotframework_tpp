*** Settings ***
Library     SeleniumLibrary
Resource    ../Objects/common_resources.resource
# Library  DataDriver   file=../Testsuite/Test_data.xlsx

Test Setup    Start_testcase
Test Teardown    Finish_testcase
# Test Template  Verify_URLs_noindex_tag

*** Test Cases ***
Verify_URLs_do_not_contain_noindex_tag
	Run Keyword If    condition    name    *args
	${content}=  Get Element Attribute    ${meta_robot}    content
	Run Keyword If    '${content}' == '${index}'    Pass_test_case
	...   ELSE  Fail_test_case

*** Keywords ***
Verify_URLs_noindex_tag
	[Arguments]		${path}
	Check_element_attribute_of_meta_robot
	Check_element_attribute_of_meta_google_robot
