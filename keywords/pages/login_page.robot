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

Verify Login Error Message
    [Documentation]    Verifies that login error message is displayed
    Browser.Wait For Elements State    selector=${login_locator.lbl_error}    state=visible    timeout=5

Verify password invalid message
    [Documentation]    Verifies that invalid password message is displayed
    Browser.Wait For Elements State    selector=${login_locator.lbl_error}    state=visible    timeout=5

Verify username invalid message
    [Documentation]    Verifies that invalid username message is displayed
    Browser.Wait For Elements State    selector=${login_locator.lbl_error}    state=visible    timeout=5

Verify logout message
    [Documentation]    Verifies that logout success message is displayed
    Browser.Wait For Elements State    selector=${login_locator.lbl_success}    state=visible    timeout=5
