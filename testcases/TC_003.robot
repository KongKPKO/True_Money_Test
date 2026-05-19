*** Settings ***
Variables    ${CURDIR}/../resources/testdata/TC_003.yaml
Resource    ${CURDIR}/../resources/import.robot

*** Test Cases ***
Login failed - Username not found
    common.Open browser  website=${WEBSITE_URL}
    login_page.Verify Login Page
    login_feature.Login  username=${TC_003.username}   password=${TC_003.password}
    login_page.Verify username invalid message
