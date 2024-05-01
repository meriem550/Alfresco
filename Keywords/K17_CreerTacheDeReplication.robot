#CreateReplication
link_createRepli = "//*[text()='Créer une tâche']"
txt_taskName = "//*[@name='name']"
txt_taskDescrpt = "//*[@name='description']"
btn_slctSrc = "//*[@id='yui-gen13-button']"
btn_addSrc = "//tr[.//*[text()='"
btn_addSrc1 = "']]//*[@class='addIcon']"
btn_validSrc = "//*[@id='alf-id0_payload-cntrl-ok-button']"
chbx_planified = "//*[@title='Tâche planifiée']"
chbx_activated = "//*[@title='Activé']"
btn_createTask = "//*[text()='Créer une tâche']"

CreerTacheDeReplication
    [Arguments]    ${vTaskname}    ${vTaskdisc}    ${cSrcName}    ${vPlanified}    ${vActivated}
    Go To    http://localhost:8088/share/page/console/admin-console/replication-jobs
    Click Element    ${link_createRepli}
    Input Text    ${txt_taskName}    ${vTaskname}
    Input Text    ${txt_taskDescrpt}    ${vTaskdisc}
    Click Element    ${btn_slctSrc}
    Wait Until Element Is Enabled    ${btn_addSrc}${cSrcName}${btn_addSrc1}
    Click Element    ${btn_addSrc}${cSrcName}${btn_addSrc1}
    Click Element    ${btn_validSrc}
    IF    ${vPlanified} == "1"
        Select Checkbox    ${chbx_planified}
    ELSE
        Unselect Checkbox    ${chbx_planified}
    END
    IF    ${vActivated} == "1"
        Select Checkbox    ${chbx_activated}
    ELSE
        Unselect Checkbox    ${chbx_activated}
    END
    Click Element    ${btn_createTask}