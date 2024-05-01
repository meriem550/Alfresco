#GroupLocators
link_admin = "//*[@id='HEADER_ADMIN_CONSOLE_text']/a"
link_groups = "//a[text()='Groupes']"
link_parcourir = "//*[text()='Parcourir']"
link_nw_Grp = "//*[@title='Nouveau groupe']"
txt_grp_name = "//input[contains(@class,'crud-input') and @maxlength='100']"
txt_grp_displayed = "//input[contains(@class,'crud-input') and @maxlength='255']"
txt_grp_create = "//button[contains(@id,'creategroup-ok-button-button')]"



CreerGroupe
    [Arguments]    ${vGrpName}    ${vGrpName_dsplyd}
    Click Element    ${link_admin}
    Click Element    ${link_groups}
    Wait Until Element Is Visible    ${link_parcourir}
    Click Element    ${link_parcourir}
    Wait Until Element Is Visible    ${link_nw_Grp}
    Click Element    ${link_nw_Grp}
    Wait Until Element Is Visible    ${txt_grp_name}
    Input Text    ${txt_grp_name}    ${vGrpName}
    Input Text    ${txt_grp_displayed}    ${vGrpName_dsplyd}
    Click Element    ${txt_grp_create}