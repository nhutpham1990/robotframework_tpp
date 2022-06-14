*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}              https://mpl-dashboard.tpptechnology.com/adminlogin
${ENV_web}          Chrome
${email_field}      //*[@id="__layout"]/div/div[2]/form/div[2]/div[1]/input
${password_field}   //*[@id="__layout"]/div/div[2]/form/div[2]/div[2]/input
${login_button}     //*[@id="__layout"]/div/div[2]/form/div[4]/a/button
${sleep}            5
