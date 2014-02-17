// Customer.sl
// Customer Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cCustomerDataDictionary.dd

CD_Popup_Object Customer_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 236
    Set Label To "Customer Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oCustomer_DD is a cCustomerDataDictionary
    End_Object // oCustomer_DD

    Set Main_DD To oCustomer_DD
    Set Server  To oCustomer_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 226
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Customer_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oCustomer_Customer_Number is a cDbCJGridColumn
            Entry_Item Customer.Customer_Number
            Set piWidth to 99
            Set psCaption to "Customer Number"
        End_Object // oCustomer_Customer_Number

        Object oCustomer_Name is a cDbCJGridColumn
            Entry_Item Customer.Name
            Set piWidth to 225
            Set psCaption to "Name"
        End_Object // oCustomer_Name


    End_Object // oSelList

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 73
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object // oOk_bn

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 127
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object // oCancel_bn

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 181
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object // oSearch_bn

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Customer_sl
