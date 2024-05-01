#supprimer une règle locators
link_Fichiers_Partagers = "//a[@title='Fichiers partagés']"
link_Nom_Dossier1 = "//span[@class='ygtvlabel' and text()='"
link_Nom_Dossier2 = "']"
link_nom = "//span[@class='label']/a"
link_Gérer_règle = "//span[text()='Gérer les règles']"
link_Nom_Règle1 = "//a[@id='alf-id14'and text()='"
link_Nom_Règle2 = "']"
link_supp_règle = "//button[@id='template_x002e_rule-details_x002e_folder-rules_x0023_default-delete-button-button']"
btn_supp_règle = "//button[@id='yui-gen22-button']"
**keyword**
Supprimer une règle
    [Arguments]    ${vNom_Dossier}    ${vNom-Règle}
    Click Element    ${link_Fichiers_Partagers}
    Click Element    ${link_Nom_Dossier1}${vNom_Dossier}${link_Nom_Dossier2} 
   Click Element    ${link_nom}   
    Click Element    ${link_Gérer_règle}
    Click Element    ${link_Nom_Règle1}${vNom-règle}${link_Nom_Règle2}
    Click Button    ${link_supp_règle}
    Click Button    ${btn_supp_règle}