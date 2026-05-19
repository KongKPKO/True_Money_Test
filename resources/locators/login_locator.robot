*** Variables ***
${login_locator.header}    css=h2:text-is("${translation.log_in_page.header}")
${login_locator.txt_username}  css=#username
${login_locator.txt_password}  css=#password
${login_locator.btn_log_in}    css=button[type="submit"] 
${login_locator.lbl_error}     css=.flash.error
${login_locator.lbl_success}   css=.flash.success
