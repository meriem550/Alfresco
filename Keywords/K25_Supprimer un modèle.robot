# Localisateurs Supprimer un modèle
lnk_OutilsAdmin = "//a[@title='Outils admin']"
lnk_GestionnaireDeModele = "//a[@href='custom-model-manager']"
lnk_Actions1 = "//span[text()='" 
lnk_Actions2 = "']/ancestor::tr/td//span[text()='Actions']"
lnk_Supprimer = "//div[@class='dijitPopup Popup']/div/div/div/table/tbody/tr/td[@class='dijitReset dijitMenuItemLabel' and text()='Supprimer']"
btn_SupprimerConfirm = "//div[@class='footer']//span[text()='Supprimer']"

#Keyword
Supprimer un modèle 
    # vNomModele contiens le nom du modele a supprimer
    [Arguments]    ${vNomModele}
    Click Element    ${lnk_OutilsAdmin}
    Click Element    ${lnk_GestionnaireDeModele}
    Click Element    ${lnk_Actions1}${vNomModele}${lnk_Actions2}
    Click Element    ${lnk_Supprimer}
	# Affichage de fenetre de confirmation de suppression du modele 
    Click Element    ${btn_SupprimerConfirm}
	# Rafraichir la page pour s'assurer que le modele a bien eté supprimer 
    Reload Page
	# Le modele supprimer ne doit pas apparaitre dans la liste des modeles
    Element Should Not Be Visible    ${lnk_Actions1}${vNomModele}${lnk_Actions2}