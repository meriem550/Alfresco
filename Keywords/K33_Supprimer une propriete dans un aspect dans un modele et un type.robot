class k33:
    OutilsAdmin = "//*[@id='HEADER_ADMIN_CONSOLE_text']/a"
    GestionnaireDeModeles = "//*[@href='custom-model-manager']"
    lnk_Modele1 =   "//span[text()='"
    lnk_Modele2 =   "']" 
    lnk_event1 = "//span[text()='"
    lnk_event2 = "']"
    txt_base_url  =  "http://localhost:8887/share/page/console/admin-console/custom-model-manager"
    property_arrow1 = "//span[text()='m:"
    property_arrow2 = "']/ancestor::tr//span[@class='alfresco-menus-AlfMenuBarPopup__arrow']"
    supprimer_xpath1 ="//div[@id='"
    supprimer_xpath2 ="_dropdown']//td[contains(@class, 'dijitMenuItemLabel') and (contains(text(), 'Eliminar') or contains(text(), 'Supprimer'))]"
    confirmation_dialog = "//*[@id='CMM_DELETE_PROPERTY_DIALOG']//span[(text() = 'Eliminar' or text() = 'Supprimer')]"
	
K33_Nelson_Supprimer une propriete dans un aspect dans un modele et un type
    [Arguments]    ${k33vModelNom}    ${k33vAspectNom}    ${k33vTypeNom}    ${k33vTypeProperty}    ${k33vAspectProperty}
    # begin k33
    Wait Until Element Is Visible    ${k33.OutilsAdmin}
    Click Element    ${k33.OutilsAdmin}
    Click Element    ${k33.GestionnaireDeModeles}
    #get model
    Wait Until Element Is Visible    ${k33.lnk_Modele1}${k33vModelNom}${k33.lnk_Modele2}    10s
    Click Element    ${k33.lnk_Modele1}${k33vModelNom}${k33.lnk_Modele2} 
    #get model.aspect  ************************************************************************1
    Go To    ${k33.txt_base_url}${k33.properties_model}${k33vModelNom}${k33.properttiesGroup}${k33vAspectNom}
    #get actions menu
    Wait Until Element Is Visible    ${k33.property_arrow1}${k33vAspectProperty}${k33.property_arrow2}    10s
    Click Element    ${k33.property_arrow1}${k33vAspectProperty}${k33.property_arrow2}
    #get menu's id
    ${arrow_td}=    Get Webelement    ${k33.property_arrow1}${k33vAspectProperty}${k33.property_arrow2}${k33.parent}
    ${idMenu}=   Get Element Attribute     ${k33.property_arrow1}${k33vAspectProperty}${k33.property_arrow2}${k33.parent}     id
    #click delete button
    ${supprimer_xpath}=    Set Variable    ${k33.supprimer_xpath1}${idMenu}${k33.supprimer_xpath2}
    Wait Until Element Is Visible    ${supprimer_xpath}    10s
    Click Element    ${supprimer_xpath}
    #confirmation dialog
    Wait Until Element Is Visible   ${k33.confirmation_dialog}    10s
    Click Element    ${k33.confirmation_dialog}
	
	