
class k22:
    lnk_k22_site1 = "http://localhost:8887/share/page/site/"
    lnk_k22_site2 = "/dashboard"
    lnk_calendrier = "//*[@id='HEADER_SITE_CALENDAR_text']/a"
    lnk_k22_event1 = "//span[text()='"
    lnk_k22_event2 = "']"
    lnk_suprimer ="//*[@id='template_x002e_view_x002e_calendar_x0023_defaultContainer-delete-button-button']"
    lnk_suprimerConfirmation1 = "//div[contains(text(), '"
    lnk_suprimerConfirmation2 = "')]/following::button[contains(text(), 'r')]"


K22_Nelson_Supprimer un evenement dans un site
...    [Arguments]    ${siteNom}    ${siteEvenement}
    go to           ${k22.lnk_k22_site1}${siteNom}${k22.lnk_k22_site2}
    Click Element   ${k22.lnk_calendrier}
    Click Element   ${k22.lnk_k22_event1}${siteEvenement}${k22.lnk_k22_event2}
    Sleep    2s
    Click Element    ${k22.lnk_suprimer}
    Sleep    2s
    Click Element    ${k22.lnk_suprimerConfirmation1}${siteEvenement}${k22.lnk_suprimerConfirmation2}