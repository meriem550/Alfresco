class k44:
    urlBase = "http://localhost:8887/share/page/site/"
    dashboard = "/dashboard"
    customiseSite = "/customise-site"
    target_data1=   "//*[@id='template_x002e_customise-pages_x002e_customise-site_x0023_default-page-"
    target_data2=   "']"
    target_current_pages = "//*[@id='template_x002e_customise-pages_x002e_customise-site_x0023_default-currentPages-ul']"
    btn_save =     "//*[@id='template_x002e_customise-pages_x002e_customise-site_x0023_default-save-button-button']"
	
	
K44_Nelson_Menu parametrer site
    [Arguments]    ${vSiteNom}    ${vfn2}    
	#${vfn2}                data-lists
    Go To    ${k44.urlBase}${vSiteNom}${k44.dashboard}
    Sleep    2s
    Go To    ${k44.urlBase}${vSiteNom}${k44.customiseSite}
    Sleep    2s
    Drag And Drop    ${k44.target_data1}${vfn2}${k44.target_data2}    ${k44.target_current_pages}
    Wait Until Element Is Visible    ${k44.btn_save}    10s
    Click Element    ${k44.btn_save}	
	