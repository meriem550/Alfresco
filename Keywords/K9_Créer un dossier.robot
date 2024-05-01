#Locators MesFichiers

link_MesFichiers = "//a[@href='/share/page/context/mine/myfiles']"
btn_Creer = "//button[@id='template_x002e_documentlist_v2_x002e_myfiles_x0023_default-createContent-button-button']"
option_Dossier = "//span[@class='folder-file']"
txt_nom = "//input[@name='prop_cm_name']"
txt_title = "//input[@name='prop_cm_title']"
txt_description = "//textarea[@name='prop_cm_description']"
btn_enregistrer = "//button[@id='template_x002e_documentlist_v2_x002e_myfiles_x0023_default-createFolder-form-submit-button']"
link_DossierCree1 = "//a[text()='"
link_DossierCree2 ="']"

#Keyword
Créer un dossier
    [Arguments]    ${vNomDossier}    ${vTitleDossier}    ${vDescriptionDossier}
    Click Element    ${link_MesFichiers}  
    Click Button    ${btn_Creer}
    Click Element    ${option_Dossier}
    Wait Until Element Is Visible    ${txt_nom}
    Input text    ${txt_nom}    ${vNomDossier}
    Input text    ${txt_title}    ${vTitleDossier}
    Input text    ${txt_description}    ${vDescriptionDossier}
    Click Button    ${btn_enregistrer}
    Wait Until Element Is Visible    ${link_DossierCree1}${vNomDossier}${link_DossierCree2}
    Element Should Be Visible    ${link_DossierCree1}${vNomDossier}${link_DossierCree2}