*** Settings ***
Documentation  Tags in Robot Framework
Force Tags    3.4.1

*** Variables ***

*** Test Cases ***
3.4.1.1 Test Case 1
    [tags]  Smoke
    Log To Console  This is test case 1

3.4.1.2 Test Case 2
    [tags]  Regression
    Log To Console  This is test case 2

3.4.1.3 Test Case 3
    [tags]  Regression
    Log To Console  This is test case 3

3.4.1.4 Test Case 4
    [tags]  Smoke
    Log To Console  This is test case 4

3.4.1.5 Test Case 5
    [tags]  Sanity
    Log To Console  This is test case 5

*** Keywords ***
