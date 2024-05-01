# Afficher module Elements
drag_Module1 = "//h3[text()='"
drag_Module2 = "']/ancestor::li"
drop_Module = "//*[@id='template_x002e_customise-pages_x002e_customise-site_x0023_default']/div[5]"
btn_Ok = "//button[contains(.,'OK')]"

Afficher Module
    # vNom_Site est le nom du site cible.
    # vURL_SiteModules :  http://localhost:8088/share/page/site/${vNom_Site}/customise-site
    # vBROWSER est le navigateur utilisé pour la session
    # vModule est le nom du module à afficher
    [Arguments]    ${vURL_SiteModules}    ${vBROWSER}    ${vModule}
    Open Browser    ${vURL_SiteModules}    ${vBROWSER}
    Maximize Browser Window
    Drag And Drop    ${drag_Module1}${vModule}${drag_Module2}    ${drop_Module}
    Click Button    ${btn_Ok}

