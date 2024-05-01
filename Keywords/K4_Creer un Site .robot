class SiteWeb:
    lnk_Sites             = "//span[@id='HEADER_SITES_MENU_text']"
    txt_Nom               = "//input[@class='dijitReset dijitInputInner'] [@name='title']"
    txt_Nom_URL           = "//input[@class='dijitReset dijitInputInner'] [@name='shortName']"
    txt_Description       = "//textarea[@name='description']"
    select_checkbox       = "//*[@id='CREATE_SITE_FIELD_VISIBILITY_CONTROL_OPTION0_BUTTON']"
    lnk_cree_SiteWeb      = "//td[@class='dijitReset dijitMenuItemLabel' and text()='Créer un site']"
    btn_Creer_Site        = "//span[@id='CREATE_SITE_DIALOG_OK_label']"
    msg_Succes            = "//div[@id='flash_notice']"
    lnk_SiteWeb_a_suppr1  = "/share/page/site/"
    lnk_SiteWeb_a_suppr2  = "/dashboard"
    lnk_Config            = "//img[@title='Options de configuration de site']"
    lnk_Supprimer_Site    = "//td[@class='dijitReset dijitMenuItemLabel' and text()='Supprimer le site']"
    btn_Confime_Supresion = "//span[@class='dijitReset dijitInline dijitButtonText' and text()='OK']"
    box1                  ="//input[contains(@id,'CREATE_SITE_FIELD_VISIBILITY_CONTROL') and @value='"
    box2                  ="']"

*** Keywords ***
K4_Ismail Creer un Site 
    [Arguments]                      ${vNom}    ${vNom_URL}    ${vDescrip}   ${vVisibilite}      
    Click Element                    ${SiteWeb.lnk_Sites}
    Wait Until Element Is Visible    ${SiteWeb.lnk_cree_SiteWeb}
    Click Element                    ${SiteWeb.lnk_cree_SiteWeb}
    Input Text                       ${SiteWeb.txt_Nom}    ${vNom}
    Input Text                       ${SiteWeb.txt_Nom_URL}    ${vNom_URL}
    Input Text                       ${SiteWeb.txt_Description}    ${vDescrip}
    Click Element                    ${SiteWeb.box1}${vVisibilite}${SiteWeb.box2}   
    Click Element                    ${SiteWeb.btn_Creer_Site} 
	