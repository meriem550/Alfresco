#Locators
#K23_Supprimer un groupe

tab_Groupes = "//span/a[@title='Gestion des groupes']"
box_Text_Groupe = "//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-search-text']"
btn_Rechercher = "//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-search-button-button']"
link_SuprrimerGroup = "//*[@class='delete']"
btn_Supprimer_Group = "//*[@id='page_x002e_ctool_x002e_admin-console_x0023_default-remove-button-button']"

#Keyword
SupprimerGroupe
    [Arguments]    ${vNom_Groupe}
    Go To    http://localhost:8088/share/page/console/admin-console/groups
    Wait Until Element Is Visible   ${box_Text_Groupe} 
    Input Text    ${box_Text_Groupe}    ${vNom_Groupe}
    Click Button    ${btn_Rechercher}
    Wait Until Element Is Visible    ${link_SuprrimerGroup}
    Click Element    ${link_SuprrimerGroup}
    Wait Until Element Is Visible    ${btn_Supprimer_Group}
    Click Button    ${btn_Supprimer_Group}