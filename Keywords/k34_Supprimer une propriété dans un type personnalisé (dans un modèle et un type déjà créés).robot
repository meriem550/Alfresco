#Locators
#k34_Supprimer une propriété dans un type personnalisé (dans un modèle et un type déjà créés)

link_Type_Perso1 = "//span[@class='value' and text()='"
link_Type_Perso2 = "']"
link_Action1 = "//span[@class='value' and text()='"
link_Action2 ="']//following::span[contains(text(),'Actions')]"
link_supprimer = "//div[@class='dijitPopup Popup']/div/div/div/table/tbody/tr/td[text()='Supprimer']"
btn_Supprimer = "//*[@id='CMM_DELETE_PROPERTY_DIALOG']//span[text()='Supprimer']"


#Keyword
SupprimerProprieteTypePersonnalise
    [Arguments]    ${vNom_Modele}    ${vNom_Espace:TypePerso}    ${vNom_Espace:Propriete}
    Go To    http://localhost:8088/share/page/console/admin-console/custom-model-manager#view=types_property_groups&model=${vNom_Modele}
    Wait Until Element Is Visible    ${link_Type_Perso1}${vNom_Espace:TypePerso}${link_Type_Perso2}
    Click Element    ${link_Type_Perso1}${vNom_Espace:TypePerso}${link_Type_Perso2}
    Wait Until Element Is Visible    ${link_Action1}${vNom_Espace:Propriete}${link_Action2}
    Click Element    ${link_Action1}${vNom_Espace:Propriete}${link_Action2} 
    Click Element    ${link_Supprimer}
    Click Element    ${btn_Supprimer}