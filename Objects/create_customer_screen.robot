*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${user_button}        //*[@id="__layout"]/div/div/div/div[1]/div/ul/li[5]/div[1]/p
${customer_button}    //*[@id="__layout"]/div/div/div/div[1]/div/ul/li[5]/div[2]/ul/li[1]/a/span
${plus_button}        //body/div[@id='__nuxt']/div[@id='__layout']/div[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[2]/div[1]/div[1]/div[2]/div[2]/div[2]/div[5]/div[1]/div[1]/ul[1]/li[2]/button[1]/*[1]
${first_name}         //*[@id="swal-input1"]
${valid_first_name}   Nhut
${last_name}          //*[@id="swal-input2"]
${valid_last_name}    Test_Automation
${phone_number}       //*[@id="swal-input3"]
${valid_phone_number}   0401001006
${email}              //*[@id="swal-input5"]
${valid_email_customer}        nhut.pham@tpptechnology.com
${password}           //*[@id="swal-input12"]
${valid_password_customer}     Nhuttpp2022
${pin}                //*[@id="swal-input13"]
${valid_pin}          1234
${birthday}           //*[@id="swal-input14"]
${valid_birthday}     15101990
${apartment}          //*[@id="swal-input15"]
${TPP}                //option[contains(text(),'TPP 302 Le van Sy')]
${code}               //*[@id="swal-input9"]
${valid_code}         1A
${alias}              //*[@id="swal-input7"]
${valid_alias}        TestAlias
${create_button}      //button[contains(text(),'Create')]
${confirm_popup}      //*[@id="swal2-content"]
${valid_confirm_text}    This customer has been created.
${ok_button}          //button[contains(text(),'OK')]
${email_info}         //td[contains(text(),'nhut.pham@tpptechnology.com')]
${wait_time}          5
