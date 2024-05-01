#liste de donnees
link_Sites = "//span[@id='HEADER_SITES_MENU_text']"
link_Mes_Sites = "//td[@id='HEADER_SITES_MENU_MY_SITES_text']/a"
link_Nom_Site = "//a[@href='/share/page/site/sitemeriem' and @class='thmb']"
link_liste_donnees = "//a[@title='Listes de données']"
link_Nouvelle_Liste = "//button[contains(text(),'Nouvelle liste')]"
link_Agenda1 = "//span[contains(text(),'"
link_Agenda2 = "')]"
input_Titre = "//input[@name='prop_cm_title']"
input_Description_Donnees = "//textarea[@name='prop_cm_description']"
btn_enregistrer = "//button[@id='template_x002e_datalists_x002e_data-lists_x0023_default-newList-form-submit-button']"
link_Verif_Agenda1 = "//a[@title='"
link_Verif_Agenda2 = "']"

*** Keywords ***
Créer une liste de données (dans un site déjà créé)
    [Arguments]    ${vNom_Site}    ${vtype_liste}    ${vTitre}    ${vDescription_Donnees}
    Click Element    ${link_Sites}
    Wait Until Element Is Visible    ${link_Mes_Sites}
    Click Element   ${link_Mes_Sites}
    Click Element    ${link_Nom_Site}
    Click Element    ${link_liste_donnees}
    Click Element    ${link_Nouvelle_Liste}
    Click Element    ${link_Agenda1}${vtype_liste}${link_Agenda2}
    Input Text    ${input_Titre}    ${vTitre}
    Input Text    ${input_Description_Donnees}    ${vDescription_Donnees}
    Click Button    ${btn_enregistrer}
    Wait Until Element Is Visible    ${link_Verif_Agenda1}${vTitre}${link_Verif_Agenda2}
    Element Should Be Visible    ${link_Verif_Agenda1}${vTitre}${link_Verif_Agenda2}