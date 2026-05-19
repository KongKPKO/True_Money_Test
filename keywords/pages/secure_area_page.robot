*** Keywords ***
Verify Logged In Message
    [Documentation]    Verifies that the secure area is displayed
    Browser.Wait for elements state    selector=${secure_area_locator.lbl_logged_in}    state=visible    timeout=5

Click logout
    [Documentation]    Clicks the logout button
    Browser.Click    selector=${secure_area_locator.btn_log_out}