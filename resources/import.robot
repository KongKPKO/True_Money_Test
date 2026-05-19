*** Settings ***
Library     Browser     strict=${FALSE}
Library     String

#common
Resource    ${CURDIR}/../keywords/common/common.robot

#locators
Resource    ${CURDIR}/../resources/locators/login_locator.robot
Resource    ${CURDIR}/../resources/locators/secure_area_locator.robot

#pages
Resource    ${CURDIR}/../keywords/pages/login_page.robot
Resource    ${CURDIR}/../keywords/pages/secure_area_page.robot

#features
Resource    ${CURDIR}/../keywords/features/login_feature.robot

#Setting
Variables    ${CURDIR}/../resources/settings/setting.yaml

#translation
Variables    ${CURDIR}/../resources/translation/en.yaml
