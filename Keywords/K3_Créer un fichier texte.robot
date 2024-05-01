# Localisateurs CréerUnFichierTexte
lnk_MesFichiers = "//*[@id='HEADER_MY_FILES_text']/a"
btn_PlusCreer = "//*[@id='template_x002e_documentlist_v2_x002e_myfiles_x0023_default-createContent-button-button']"
lnk_PleinText = "//a/span[text()='Plein texte...']"
input_TextNom = "//input[@name='prop_cm_name']"
input_Contenu = "//textarea[@id='template_x002e_create-content_x002e_create-content_x0023_default_prop_cm_content']"
input_TextTitre = "//input[@name='prop_cm_title']"
input_TextDescription = "//textarea[@name='prop_cm_description']"
btn_CreerText = "//button[@name='-' and text()='Créer']"
titre_DetailDocument = "//span[contains(text(), 'Détails du document')]"

#Keyword
CréerUnFichierTexte
	# vNomText contient le texte qui apparaitera dans le champs Nom
	# vContenu contient le texte qui apparaitra dans le champs contenu au-dessous de champs Nom
	# vTitreText contient le texte qui apparaitra dans le champs titre
	# vDescriptionText contient le texte qui apparaitra dans le champs DescriptionText
    [Arguments]    ${vNomText}    ${vContenu}    ${vTitreText}    ${vDescriptionText}
    Click Element    ${lnk_MesFichiers}
    Click Element   ${btn_PlusCreer}    
    Click Element    ${lnk_PleinText}
    Input Text    ${input_TextNom}    ${vNomText}
    Input Text    ${input_Contenu}    ${vContenu}
    Input Text    ${input_TextTitre}    ${vTitreText}
    Input Text    ${input_TextDescription}    ${vDescriptionText}
    Click Button    ${btn_CreerText}
	#Apres la creation du fichier,doit-on voir l'affichage des details du document créer
    Wait Until Element Contains    ${titre_DetailDocument}    Détails du document 
