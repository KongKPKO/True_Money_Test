*** Keywords ***
Verify Login Page
    [Documentation]    Verifies that the login page is displayed
    Browser.Wait for elements state    selector=${login_locator.header}    state=visible    timeout=5

Fill username
    [Documentation]    Fills the username field
    ...                Arguments: 
    ...                 - ${username}  username for login 
    [Arguments]    ${username}
    Browser.Fill Text    selector=${login_locator.txt_username}    txt=${username}

Fill password
    [Documentation]    Fills the password field
    ...                Arguments: 
    ...                 - ${password}  password for login 
    [Arguments]    ${password}
    Browser.Fill Text    selector=${login_locator.txt_password}    txt=${password}

Click login
    [Documentation]    Clicks the login button
    Browser.Click    selector=${login_locator.btn_log_in}

Verify logout message
    [Documentation]    Verifies that the logout message is displayed
    Browser.Wait for elements state    selector=${login_locator.lbl_logged_out_message}    state=visible    timeout=5

Verify password invalid message
    [Documentation]    Verifies that the password invalid message is displayed
    Browser.Wait for elements state    selector=${login_locator.lbl_password_invalid_message}    state=visible    timeout=5

Verify username invalid message
    [Documentation]    Verifies that the username invalid message is displayed
    Browser.Wait for elements state    selector=${login_locator.lbl_username_invalid_message}    state=visible    timeout=5