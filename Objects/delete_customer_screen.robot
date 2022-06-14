*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${x_button}   //tbody/tr[1]/td[9]/div[1]/div[1]/div[10]/div[4]/button[1]
${yes_button}   //button[contains(text(),'Yes, delete it!')]
${delete_confirm_popup}   //div[@id='swal2-content']
${valid_delete_confirm_text}    This customer has been deleted.
${ok_button}    //button[contains(text(),'OK')]
${deleted_value}    //td[contains(text(),'nhut.pham@tpptechnology.com')]
