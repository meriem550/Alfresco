#Aspect Locators
link_Outils_Admin =  "//a[@class='alfresco-navigation-_HtmlAnchorMixin' and @href='/share/page/console/admin-console/application']"
link_Gestionnaire_modeles = "//a[@href='custom-model-manager']"
link_Aspect_Parent = "//input[@value='▼ ']"
#option_to_select = "//td[@id='dijit_MenuItem_1_text']"
btn_cree_aspect = "//span[@class='dijitReset dijitInline dijitButtonText' and text()='Créer un aspect']"
input_Nom = "//input[@class='dijitReset dijitInputInner' and @name='name']"
input_Affichage = "//input[@class='dijitReset dijitInputInner' and @name='title']"
input_Description = "//textarea[@class='dijitTextBox dijitTextArea']"
btn_cree = "//span[@class='dijitReset dijitInline dijitButtonText' and text()='Créer']"


*** Keywords ***

Créer un aspect (dans un modèle déjà créé)
    [Arguments]    ${vNom_model}    ${vNom}    ${vOption_to_select}    ${vAffichage}    ${vDescription}
    Click Element    ${link_Outils_Admin}
    Click Element    ${link_Gestionnaire_modeles}
    Click Element    ${link_nom_model1}${vNom_model}${link_nom_model2}
    Click Element    ${btn_cree_aspect}
    Input Text    ${input_Nom}    ${vNom}
    Select From List By Value    ${link_Aspect_Parent}    ${vOption_to_select}
    Input Text    ${input_Affichage}    ${vAffichage}
    Input Text    ${input_Description}    ${vDescription}
    Click Element    ${btn_cree}
    Wait Until Element Is Visible    ${link_aspect1}${vNom_model}:${vNom}${link_aspect2}
    Element Should Be Visible    ${link_aspect1}${vNom_model}:${vNom}${link_aspect2}