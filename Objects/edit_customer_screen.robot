*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${email_field}    //td[contains(text(),'nhut.pham@tpptechnology.com')]
${edit_button}    //tbody/tr[1]/td[9]/div[1]/div[1]/div[10]/div[1]/button[1]/*[1]
${accountTopUpLevel_field}    //*[@id="swal-input7"]
${edited_value}   //option[contains(text(),'Platinum')]
${update_button}    //button[contains(text(),'Update')]
${edit_confirm_popup}    //div[@id='swal2-content']
${valid_edit_confirm_text}   This customer has been updated.
${ok_button}    //button[contains(text(),'OK')]
${customer_field}   //tbody/tr[1]/td[1]/span[1]
${edited_accountTopUpLevel_field}   //*[@id="__layout"]/div/div/div/div[2]/div[2]/div/div[2]/div/div/div[2]/div[3]/div/div[2]/table/tbody/tr[2]/td/div/div/div[6]/div[2]/tr/td[1]
${valid_edited_value}   Platinum
