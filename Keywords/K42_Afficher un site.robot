#Variables
# ${vURLSite1}            http://localhost:8088/share/page/site/
# ${vURLSite2}            /dashboard

#Keywords
Afficher un site
    [Arguments]    ${vURLSite1}    ${vURLSite2}     ${vNomURLSite}
    Go To    ${vURLSite1}${vNomURLSite}${vURLSite2}
	