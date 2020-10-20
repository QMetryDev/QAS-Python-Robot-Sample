*** Settings ***
Resource		../../../steps/android/step_definitions.robot
Test Setup	Open Application
Test Teardown	Close Application


*** Variables ***
${myVar}			Some_Value

*** Test Cases ***

android
	
	
	Wait Until Element Is Visible	accessibility_id=email
	Input Text	accessibility_id=email    Bob
	Element Text Should Be	accessibility_id=email    Bob
	Input Text	accessibility_id=password    Bob
	Element Text Should Be	accessibility_id=password    Bob
	Click Element	accessibility_id=signIn
	Wait Until Element Is Visible	accessibility_id=transacations
	Click Element	accessibility_id=transacations
	Input Text	accessibility_id=enterAmount    1000
	Wait Until Element Is Visible	accessibility_id=credit
	Page Should Contain Element	accessibility_id=credit
	Click Element	accessibility_id=credit



