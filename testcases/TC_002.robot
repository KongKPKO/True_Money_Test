*** Settings ***
Variables    ${CURDIR}/../resources/testdata/TC_002.yaml
Resource    ${CURDIR}/../resources/import.robot

*** Test Cases ***
Login failed - Password incorrect
    common.Open browser  website=${WEBSITE_URL}
    login_page.Verify Login Page
    login_feature.Login  username=${TC_002.username}   password=${TC_002.password}
    login_page.Verify password invalid message
