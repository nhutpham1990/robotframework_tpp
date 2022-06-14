*** Settings ***
Documentation    Email Function
Library          Selenium2Library
Library          ImapLibrary2
Library          String
Library          Pdf2TextLibrary
Library          RPA.Email.ImapSmtp   smtp_server=smtp.gmail.com  smtp_port=587
Force tags       1.0



*** Variables ***

*** Test Cases ***
TC_00-Read_All_Email
  [documentation]    User can mark all read the email in INBOX
  [tags]    1.0.0
  Open_OutlookMail
  ${email_received}=        Wait For Email           repicient=nhut.pham@tpptechnology.com
  Mark All Emails As Read
  Close Mailbox

TC_01-Read_Email
  [documentation]    User can mark read the email in INBOX
  [tags]    1.0.1
  Open_Gmail
  ${email_received}=        Wait For Email           sender=joynit58@gmail.com    subject=email test for robot
  Mark Email As Read        ${email_received}
  Close Mailbox

TC_02-Delete_Email
  [documentation]    User can delete the email in INBOX
  [tags]    1.0.2
  Open_Gmail
  ${email_deleted}=    Wait For Email    sender=joynit58@gmail.com    subject=test email
  Delete Email    ${email_deleted}
  Close Mailbox

TC_03-Check_Received_Email
  [documentation]    Check the received email is available in INBOX
  [tags]    1.0.3
  Open_Gmail
  Wait For Email    sender=joynit58@gmail.com    subject=email test for robot
  Close Mailbox

TC_04-Verify_Email_Information
  [documentation]    Verify information of email such as: Subject, From, To, Date
  [tags]    1.0.4
  Open_Gmail
  ${email_received}=    Wait For Email    sender=plmnhut@gmail.com   subject=email test for robot
  ${parts}=    Walk Multipart Email    ${email_received}

  ${subject}=    Get Multipart Field    subject
  Should Contain    ${subject}    email test for robot
  Log To Console    Subject: ${subject}

  ${from}=    Get Multipart Field    From
  Should Contain    ${from}    plmnhut@gmail.com
  Log To Console    From: ${from}

  ${to}=    Get Multipart Field    To
  Should Contain    ${to}    testertpp0@gmail.com
  Log To Console    To: ${to}

  ${date}=    Get Multipart Field    Date
  Should Contain    ${date}    Wed, 8 Jun 2022 19:08:46
  Log To Console    Date: ${date}
  Close Mailbox

TC_05-Open_Link_Email
  [documentation]    Open link from Email
  [tags]    1.0.5
  Open_Gmail
  ${email_received}=    Wait For Email    recipient=testertpp0@gmail.com      subject=email test for robot
  ${link_open}=     Open Link From Email     ${email_received}
  Should Contain    ${link_open}     Copyright The Closure Library Authors.
  Close Mailbox

TC_06-Get_Email_Body
  [documentation]    User can get attachment email successfully
  [tags]    1.0.6
  Open_Gmail
  ${email_received}=    Wait For Email       subject=test imap library       timeout=300
  ${body}=    Get Email Body    ${email_received}
  Log To Console    ${body}
  Close Mailbox

TC_07-Verify_attachment_Word
  [documentation]     User can verify with attachment file successfully
  [tags]    1.0.7
  Open_Gmail
  ${email_received}=    Wait For Email    subject=attachment word
  ${word_file}=    Get Email Body    ${email_received}
  Should Contain    ${word_file}    file test.docx
  Close Mailbox

TC_08-Send_email
  [documentation]    User can send email successfully by smtp
  [tags]    1.0.8
  Authorize     account=testertpp0@gmail.com      password=wsmypkfsmeiiqgnh
  Send Message    sender=testertpp0gmail.com
  ...             recipients=plmnhut@gmail.com
  ...             subject=This is a email test again again
  ...             body=Can you see this body email?

TC_09-Send_email_with_Photo
  [Documentation]     Sending email with attachment by smtp
  [tags]    1.0.9
  Authorize     account=testertpp0@gmail.com      password=wsmypkfsmeiiqgnh
  Send Message
  ...                 sender=testertpp0@gmail.com
  ...                 recipients=plmnhut@gmail.com
  ...                 subject=Send email with new attachments
  ...                 body=Check the attachments again
  ...                 attachments=approved.png,invoice.png

TC_10-Download_Attachment_File
  [documentation]    User can download attachment file successfully and verify them
  [tags]    1.0.10
  Authorize     account=testertpp0@gmail.com      password=wsmypkfsmeiiqgnh
  ${attachments}=    Save Attachments    SUBJECT "attachment email test"    target_folder=./Attachment_FR    overwrite=True
  ${detail_1}     Convert Pdf To Txt              ./Attachment_FR/BẢNG-GIÁ-QUÀ-TẾT-MEE-07.01.2022.pdf
  Log To Console         ${detail_1}
  ${ID_1}=     Get Regexp Matches        ${detail_1}          Rượu Blue Valley
  ${ID_2}=     Get Regexp Matches        ${detail_1}          Bánh quy kem Assorted
  Log To Console         ID1: ${ID_1}
  Log To Console         ID2: ${ID_2}

TC_11-Download_Attachments_File_ALL
  [documentation]    User can download attachment file successfully
  [tags]    1.0.11
  Authorize     account=testertpp0@gmail.com      password=wsmypkfsmeiiqgnh
  @{emails}     List Messages    ALL
  FOR    ${email}    IN    @{emails}
      IF    ${email}[Has-Attachments]
          Log To Console    Saving attachment for: ${email}[Subject]
          ${attachments}=    Save Attachment
          ...    ${email}
          ...    target_folder=./Attachment_FR
          ...    overwrite=True
          Log To Console    Saved attachments: ${attachments}
      END
  END

*** Keywords ***
Open_Gmail
  Open Mailbox                server=imap.gmail.com
  ...                         user=testertpp0@gmail.com
  ...                         password=yraricpxlhcxxngw
  ...                         port=993

Open_OutlookMail
  Open Mailbox                server=outlook.office365.com
  ...                         user=nhut.pham@tpptechnology.com
  ...                         password=NhutPham@2021
