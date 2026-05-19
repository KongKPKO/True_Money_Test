*** Settings ***
Variables    ${CURDIR}/../resources/testdata/TC_001.yaml
Resource    ${CURDIR}/../resources/import.robot

*** Test Cases ***
Login success
    common.Open browser  website=${WEBSITE_URL}
    login_page.Verify Login Page
    login_feature.Login  username=${TC_001.username}   password=${TC_001.password}
    secure_area_page.Verify logged in message
    secure_area_page.Click logout
    login_page.Verify logout message
