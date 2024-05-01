class Admin:
    lnk_Admin             = "//span[@id='HEADER_USER_MENU_POPUP_text']"
    lnk_profil            = "//td[@id='HEADER_USER_MENU_PROFILE_text']"
    lnk_Corbeille         ="//a[@href='user-trashcan']"
    txt_page              = "//input[@type='text' and @name='-']"
    lnk_Recherche         ="//button[text()='Rechercher']"
    btn_Supprimer         = "//td//button[text()='Supprimer']"
    btn_Confirm_Supp      = "//div[@id='prompt_c']//button[text()='OK']"
K37_Ismail Supprimer Definitivement un Site 
    [Arguments]                      ${vSite}    
    Click Element                    ${Admin.lnk_Admin}
    Click Element                    ${Admin.lnk_profil}
    Click Element                    ${Admin.lnk_Corbeille}
    Input Text                       ${Admin.txt_page}    ${vSite}
    Click Element                    ${Admin.lnk_Recherche}
    Wait Until Element Is Visible    ${Admin.btn_Supprimer}
    Click Element                    ${Admin.btn_Supprimer}
    Wait Until Element Is Visible    ${Admin.btn_Confirm_Supp}
    Click Button                     ${Admin.btn_Confirm_Supp}