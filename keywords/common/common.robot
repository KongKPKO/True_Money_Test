*** Keywords ***
Open browser
    [Documentation]    Opens a new browser instance and navigates to the website URL
    ...                 Arguments:
    ...                 - ${website}  URL of the website to navigate to
    [Arguments]     ${website}=${WEBSITE_URL}
    Browser.New Browser    headless=${HEADLESS}
    Browser.New Context
    Browser.Set Browser Timeout    20s
    Browser.New Page    url=${website}      wait_until=domcontentloaded
