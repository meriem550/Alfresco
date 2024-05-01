
class k11:    #title="Outils admin"
    OutilsAdmin = "//*[@id='HEADER_ADMIN_CONSOLE_text']/a"
    GestionnaireDeModeles = "//*[@href='custom-model-manager']"
    lnk_Modele1 =   "//span[text()='"
    lnk_Modele2 =   "']"  
    lst_types   =   "//td[@data-dojo-attach-point='titleNode']/input[@role='presentation']"
    lst_item_type1   =   "//*[contains(@class, 'MenuItemLabel') and contains(text(), '"
    lst_item_type2   =   "')]"
    btn_creerUnTypePersonalise = "//span[@class='dijitReset dijitStretch dijitButtonContents']/span[contains(text(),'per')]"
    txt_type_nom = "//*[@data-dojo-attach-point='textbox,focusNode' and  @name='name']" 
    txt_title = "//input[@name='title']"
    type_description = "//textarea[@name='description' and @class='dijitTextBox dijitTextArea']"
    btn_creer   =  "//span[@id='CMM_CREATE_TYPE_DIALOG_OK_label']"

class k11:    #title="Outils admin"
    lnk_Modele1 =   "//span[text()='"
    lnk_Modele2 =   "']"  
    lst_types   =   "//td[@data-dojo-attach-point='titleNode']/input[@role='presentation']"
    lst_item_type1   =   "//*[contains(@class, 'MenuItemLabel') and contains(text(), '"
    lst_item_type2   =   "')]"
    btn_creerUnTypePersonalise = "//span[@class='dijitReset dijitStretch dijitButtonContents']/span[contains(text(),'per')]"
    txt_type_nom = "//*[@data-dojo-attach-point='textbox,focusNode' and  @name='name']" 
    txt_title = "//input[@name='title']"
    type_description = "//textarea[@name='description' and @class='dijitTextBox dijitTextArea']"
    btn_creer   =  "//span[@id='CMM_CREATE_TYPE_DIALOG_OK_label']"



K11_Nelson_Creer un type personnalise dans un modele
    [Arguments]    ${vModelNom}    ${vTypeNom}    ${vTypeParent}    ${vTypeTitle}    ${vTypeDescription}
    Click Element    ${k11.OutilsAdmin}
    Click Element    ${k11.GestionnaireDeModeles}
    Click Element    ${k11.lnk_Modele1}${vModelNom}${k11.lnk_Modele2} 
    Click Element    ${k11.btn_creerUnTypePersonalise}
    Input text       ${k11.txt_type_nom}    ${vTypeNom} 
    Click Element    ${k11.lst_types}
    Click Element    ${k11.lst_item_type1}${vTypeParent}${k11.lst_item_type2}
    Input text       ${k11.txt_title}    ${vTypeTitle} 
    Input text       ${k11.type_description}    ${vTypeDescription} 
    Click Element    ${k11.btn_creer}
