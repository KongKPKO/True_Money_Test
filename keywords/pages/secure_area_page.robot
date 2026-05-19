*** Keywords ***
Verify logged in message
    [Documentation]    Verifies that the logged in message is displayed
    Browser.Wait for elements state    selector=${secure_area_locator.lbl_logged_in_message}    state=visible    timeout=5

Click logout
    [Documentation]    Clicks the logout button
    Browser.Click    selector=${secure_area_locator.btn_log_out}