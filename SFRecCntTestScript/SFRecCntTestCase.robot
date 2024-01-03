# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource                   ../SFRecCntCommon/SFRecCntResource.robot
Suite Setup                Setup Browser
Suite Teardown             End suite


*** Test Cases ***
Entering a Contacts
    [Tags]                 Contact
    Appstate               Home
    LaunchApp              Sales
    ClickText              Contacts
    ClickText              Select a List View: Contacts
    ClickText              All Contacts
    

    # End creation of contacts

  
