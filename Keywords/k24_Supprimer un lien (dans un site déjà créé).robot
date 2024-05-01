#supprimer un lien 
link_plus = "//span[@id='HEADER_SITE_MORE_PAGES_text']"
link_Lien = "//a[text()='Liens']"
link_Recherche = "//input[@id='HEADER_SEARCHBOX_FORM_FIELD']"
img_loup = "//img[@class='alf-search-icon alfresco-menus-AlfMenuBarPopup__icon alfresco-menus-AlfMenuItemIconMixin']"
link_Lien1 = "//a[@href='/share/page/site/"
link_Lien2 = "/links-view?linkId=link-1713822932255-4154&listViewLinkBack=true']"
link_supp_lien = "//span[text()='Supprimer']"
btn_supp ="//button[text()='Supprimer']"
*** Keywords ***

Supprimer un lien (dans un site déjà créé)
    [Arguments]    ${vNom_Site}    ${vNom-lien}
    Click Element    ${link_Sites}
    Wait Until Element Is Visible    ${link_Mes_Sites}
    Click Element   ${link_Mes_Sites}
    Click Element    ${link_Nom_Site}
    Click Element    ${link_plus}
    Click Element    ${link_Lien}        
    Mouse Over    ${link_Lien1}${vNom_Site}${link_Lien2}
    Wait Until Element Is Visible    ${link_supp_lien}
    Click Element    ${link_supp_lien}
    Click Button    ${btn_supp}