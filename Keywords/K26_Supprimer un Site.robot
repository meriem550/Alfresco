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
K26_Ismail Supprimer un Site 
    [Arguments]       ${vSite}
    Go To             ${vURL}${SiteWeb.lnk_SiteWeb_a_suppr1}${vSite}${SiteWeb.lnk_SiteWeb_a_suppr2}
    Click Element     ${SiteWeb.lnk_Config}
    Click Element     ${SiteWeb.lnk_Supprimer_Site}
    Click Element     ${SiteWeb.btn_Confime_Supresion}