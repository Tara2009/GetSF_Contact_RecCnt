# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource                ../SFRecCntCommon/SFRecCntResource.robot
Suite Setup             Setup Browser
Suite Teardown          End suite


*** Test Cases ***
Entering a Contacts
    [Tags]              Contact
    Appstate            Home
    LaunchApp           Sales
    ClickText           Contacts
    ClickText           Select a List View: Contacts
    ClickText           All Contacts
    UseTable            //table[@class\='slds-table forceRecordLayout slds-table--header-fixed slds-table--edit slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable']
    #TypeText            Search this list...         jai\n     delay=2s
    Sleep               40s
    ${ContactCount}=    GetTableRow                 //last    skip_header=True    delay=50s
    Sleep              10s
    Log                 Contacts Records Cout is : ${ContactCount}
    # End creation of contacts

