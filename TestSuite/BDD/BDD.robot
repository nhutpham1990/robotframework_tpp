*** Settings ***
Library  SeleniumLibrary
Resource    ../Test_Project/Step_Definition/KW_login.robot
Resource    ../Test_Project/Step_Definition/KW_create_customer.robot
Resource    ../Test_Project/Step_Definition/KW_edit_customer_accountTopupLevel.robot
Resource    ../Test_Project/Step_Definition/KW_common.robot
Suite Setup  Set Selenium Speed    0.5
Test teardown   Close Browser

*** Variables ***

*** Test Cases ***
# TC01_login_with_admin
#   Given Navigate_to_the_web_and_login_successfully

# TC02_Scroll_to_element
#   login_admin    tao.dang@tpptechnology.com    tppPassword2021
#   Wait_User_Button_Visible_And_Click    //*[@id="__layout"]/div/div/div/div[1]/div/ul/li[5]/div[1]/p
#   Click_Customer_Button
#   Scroll_To_Element
#
TC03_create_new_customer
    [documentation]
    [tags]
    Given Navigate_to_the_web_and_login_successfully
    When Wait_User_Button_Visible_And_Click    //*[@id="__layout"]/div/div/div/div[1]/div/ul/li[5]/div[1]/p
    And Click_Customer_Button
    And Click_Plus_Button
    And Input_Customer_Information_New    Nut    Test_Argu    0401001011    nhut.pham+cust@tpptechnology.com    Aloha123    9999    09091999    //option[contains(text(),'TPP 302 Le van Sy')]    1A    TestArgument
    And Click_Create_Button
    Then Verify_PopUp
    When KW_create_customer.Click_Ok_Button
    Then Verify_Customer_Info_New    //td[contains(text(),'nhut.pham+cust@tpptechnology.com')]    nhut.pham+cust@tpptechnology.com

*** Keywords ***
  # Scroll_To_Element
  #   Wait Until Element Is Visible     //td[contains(text(),'Tao Dangggg')]    120
  #   ${x}=        Get Horizontal Position  //td[contains(text(),'Tao Dangggg')]
  #   ${y}=        Get Vertical Position    //td[contains(text(),'Tao Dangggg')]
  #   Execute Javascript  window.scrollTo(${x}, ${y})
