*** Keywords ***
Login 
    [Documentation]    Verify login functionality
    ...                 Arguments:
    ...                 - ${username}  username for login
    ...                 - ${password}  password for login
    [Arguments]    ${username}    ${password}
    login_page.Fill Username    ${username}
    login_page.Fill Password    ${password}
    login_page.Click Login
