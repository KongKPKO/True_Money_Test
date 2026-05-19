*** Keywords ***
Open browser
    [Arguments]    ${website}=${WEBSITE_URL}
    Browser.New Browser    headless=${HEADLESS}
    Browser.New Context
    Browser.Set Browser Timeout    20s
    Browser.New Page    ${website}      wait_until=domcontentloaded

Generate random email
    ${random_string}=    String.Generate Random String    8    [LETTERS]
    RETURN    ${random_string}@mail.com

Click when element for ready
    [Arguments]    ${locator}
    Browser.Wait For Elements State    ${locator}
    Browser.Click    ${locator}
