#CreerNouveauFiltre
btn_fltrCreate = "//span[@id='CREATE_FACET_BUTTON_label']"
txt_fltrID = "//input[@name='filterID']"
txt_fltrName = "//input[@name='displayName']"
chbx_fltrEnabled = "//input[@name='isEnabled']"
txt_flreResult = "//input[@id='FORM_FACET_QNAME_CONTROL']"
list_fltrType = "//table[@id='FORM_DISPLAY_CONTROL_CONTROL']//span[@role='option']"
opt_listType = "//td[@id='dijit_MenuItem_0_text']"
list_sortBy = "//table[@id='FORM_SORTBY_CONTROL']/tbody/tr/td/div/span"
opt_listSort = "//td[text()='"
opt_listSort1 = "']"
txt_fltrNbr = "//div[.//label[text()='Nombre de filtres'] and @id='FORM_MAX_FILTERS']//input[@class='dijitReset dijitInputInner']"
txt_fltrLengthMin = "//div[.//label[text()='Longueur minimum du filtre'] and @id='FORM_MIN_FILTER_VALUE_LENGTH']//input[@class='dijitReset dijitInputInner']"
txt_fltrRsltMin = "//div[.//label[text()='Nombre minimum de résultats'] and @id='FORM_HIT_THRESHOLD']//input[@class='dijitReset dijitInputInner']"
list_fltrDispo = "//table[@id='FORM_SCOPE_CONTROL']/tbody/tr/td/div/span[@role='option']"
opt_listDispo = "//td[text()='"
opt_listDispo1 = "']"
img_add_site = "//img[@title='Ajouter une nouvelle entrée']"
list_select_site = "//div[@id='FORM_SCOPED_SITES']//div[@role='presentation']/span"
opt_siteName = "//tr[./td[text()='"
opt_siteName1 = "']]"
img_site_save = "//img[@title='Ajouter une nouvelle entrée']"
btn_fltrSave = "//span[text()='Enregistrer']"

CreerNouvrauFiltre
    [Arguments]    ${vFiltreID}    ${vFiltreNom}    ${vDisplayFltr}    ${vRsltFltr}    ${vSortBy}    ${vFltrNbr}    ${vFltrLengthMin}    ${vFltrRsltMin}    ${vDisponibility}    ${vSitesSelect}    ${vSiteName}
    # Il faut que ${vSitesSelect}    Sites sélectionnés
    Go To    http://localhost:8088/share/page/dp/ws/faceted-search-config
    Click Element    ${btn_fltrCreate}
    Input Text    ${txt_fltrID}    ${vFiltreID}
    Input Text    ${txt_fltrName}    ${vFiltreNom}
    IF    ${vDisplayFltr} == "1"
        Select Checkbox    ${chbx_fltrEnabled}
    ELSE
        Unselect Checkbox    ${chbx_fltrEnabled}
    END
    Input Text    ${txt_flreResult}    ${vRsltFltr}
    Click Element    ${list_fltrType}
    Click Element    ${opt_listType}
    Click Element    ${list_sortBy}
    Click Element    ${opt_listSort}${vSortBy}${opt_listSort1}
    Input Text    ${txt_fltrNbr}    ${vFltrNbr}
    Input Text    ${txt_fltrLengthMin}    ${vFltrLengthMin}
    Input Text    ${txt_fltrRsltMin}    ${vFltrRsltMin}
    Click Element    ${list_fltrDispo}
    Click Element    ${opt_listDispo}${vDisponibility}${opt_listDispo1}
    IF    '${vDisponibility}' == '${vSitesSelect}'
        Click Element    ${img_add_site}
        Wait Until Element Is Visible    ${list_select_site}
        #Select From List By Label    ${list_select_site}    ${vSiteName}
        Click Element    ${list_select_site}
        Click Element    ${opt_siteName}${vSiteName}${opt_siteName1}
        Click Element    ${img_site_save}
    END
    Click Element    ${btn_fltrSave}