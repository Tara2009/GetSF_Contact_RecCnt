# NOTE: readme.txt contains important information you need to take into account
# before running this suite.

*** Settings ***
Resource                ../SFRecCntCommon/SFRecCntResource.robot
Library                 SeleniumLibrary
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
    #UseTable            xpath\=//table[@class\='slds-table forceRecordLayout slds-table--header-fixed slds-table--edit slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable']
    #TypeText            Search this list...         jai\n     delay=2s
    #UseTable            xpath\=//table[@class\='slds-table forceRecordLayout slds-table--header-fixed slds-table--edit slds-table--bordered resizable-cols slds-table--resizable-cols uiVirtualDataTable']
    UseTable            xpath\=//table[contains(@class,'slds-table forceRecordLayout')]
    Sleep               60s
   # ExecuteJavascript   windows.scrollTo(0,1500)
    #Scroll Element Into View     xpath://table[contains(@class,'slds-table forceRecordLayout')] 
    #Execute Javascript        window.scrollTo(0,document.body.scrollHeight)   # this one is working
    Execute Javascript         window.scrollTo(0,2500)       
    ${ContactCount}=    GetTableRow                 //last    skip_header=True    delay=40s
    Sleep              30s
    Log                 Contacts Records Cout is : ${ContactCount}
    # End creation of contacts

