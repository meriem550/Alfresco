class OutilsAdmin: 
    lnk_OutilAdmin        = "//*[@id='HEADER_ADMIN_CONSOLE']"
    lnk_Gest_Modele       = "//a[@title='Gestionnaire de modèles']"
    lnk_Modele            = "//span[contains(text(),'ismail95')]"
    lnk_Aspect            = "//span[contains(text(),'ismail001:ISMAIL07')]"
    lnk_Aspect1           = "/share/page/console/admin-console/custom-model-manager#view=properties&model="
    lnk_Aspect2           = "&propertygroup="
    lnk_creer_propriter   = "//div[@data-dojo-attach-point='containerNode']/div/span/span/span/span[text()='Créer une propriété']"
    txt_Nom_propriete     = "//input[@class='dijitReset dijitInputInner'][@name='name']"
    txt_libelle_Affichage ="//*[@name='title' and @type='text']"
    txt_Valeur_par_Defaut ="//span[text()='d:text']/ancestor::td[@class='dijitReset dijitStretch dijitButtonContents']"
    txt_Type_Donnee       = "//table[@class='dijit dijitReset dijitInline dijitLeft dijitDownArrowButton dijitSelect dijitValidationTextBox' and ./ancestor::div[@class='control-row' and ./preceding-sibling::div/img[contains(@alt,'Type de données')]]]"
    txt_Requise           =""
    txt_Desc              ="//textarea[@class='dijitTextBox dijitTextArea' and @name='description']"
    txt_Contrainte        =""
    txt_indexation        =""
    select_box_Multiple   ="//input[@name='multiple']" 
    btn_cree_propriete    = "//div[@id='CMM_CREATE_PROPERTY_DIALOG']//span[@id='CMM_CREATE_PROPERTY_DIALOG_CREATE_label']"
K15_Ismail Creer une Propriete dans aspect 
# ${vTypeDonne} contient les types de donnee a selectionner. Valeurs possibles :
    #id="dijit_MenuItem_0_text" text()='d:text'
    #id="dijit_MenuItem_1_text" text()='d:mltext'
    #id="dijit_MenuItem_2_text" text()='d:int'
    #id="dijit_MenuItem_3_text" text()='d:long'
    #id="dijit_MenuItem_4_text" text()='d:float'
    #id="dijit_MenuItem_5_text" text()='d:double'
    #id="dijit_MenuItem_6_text" text()='d:date'
    #id="dijit_MenuItem_7_text" text()='d:datetime'
    #id="dijit_MenuItem_8_text" text()='d:boolean'
# ${vRequise} contient le Requise a selectionner. Valeurs possibles :
    #id="dijit_MenuItem_9_text"  text()='Facultative'
    #id="dijit_MenuItem_10_text" text()='Obligatoire'
# ${vContrainte} contient les Contraintes a selectionner. Valeurs possibles :
    #id="dijit_MenuItem_11_text"  text()='Aucun'
    #id="dijit_MenuItem_12_text" text()='Expression régulière'
    #id="dijit_MenuItem_13_text" text()='Longueur minimum / maximum'
    #id="dijit_MenuItem_14_text" text()='Valeur minimum / maximum'
    #id="dijit_MenuItem_15_text" text()='Liste de valeurs'
    #id="dijit_MenuItem_16_text" text()='Classe Java'
# ${vIndexation} contient les Indexations a selectionner. Valeurs possibles :
    #id="dijit_MenuItem_17_text"  text()='Aucun'
    #id="dijit_MenuItem_18_text" text()='Texte libre'
    #id="dijit_MenuItem_19_text" text()='Liste de valeurs - correspondance totale'
    #id="dijit_MenuItem_20_text" text()='Liste de valeurs - correspondance partielle'
    #id="dijit_MenuItem_21_text" text()='Motif - correspondances uniques'
    #id="dijit_MenuItem_22_text" text()='Motif - correspondances multiples'

    [Arguments]        ${vNom_Propriete}    ${vModele}    ${vAspect}    ${vlibelle_Affichage}     ${vDesc}    ${txt_Obligatoir}    
    Go To              ${vURL}${OutilsAdmin.lnk_Aspect1}${vModele}${OutilsAdmin.lnk_Aspect2}${vAspect}
    Click Element      ${OutilsAdmin.lnk_creer_propriter}
    Input Text         ${OutilsAdmin.txt_Nom_propriete}    ${vNom_Propriete}
    Input Text         ${OutilsAdmin.txt_libelle_Affichage}    ${vlibelle_Affichage}
    Input Text         ${OutilsAdmin.txt_Desc}     ${vDesc}   
    #Select From List By Index        ${OutilsAdmin.txt_Type_Donnee}    ${vTypeDonne}
    #Select From List By Index        ${OutilsAdmin.txt_Requise}        ${vRequise}
    log    ${txt_Obligatoir}
    Run Keyword If    '${txt_Obligatoir}' == 'oui'    Select Checkbox      ${OutilsAdmin.select_box_Multiple} 
    Run Keyword If    '${txt_Obligatoir}' == 'non'    Unselect Checkbox    ${OutilsAdmin.select_box_Multiple} 
    Sleep    5s  
    Input Text         ${OutilsAdmin.txt_Valeur_par_Defaut}    ${vValeur_par_Defaut}
    #Select From List By Index         ${OutilsAdmin.txt_Contrainte}    ${vContrainte} 
    #Select From List By Index         ${OutilsAdmin.txt_indexation}    ${vIndexation}
    Click Element      ${OutilsAdmin.btn_cree_propriete}