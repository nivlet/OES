// SalesP.sl
// Sales Person Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cSalesPDataDictionary.dd

CD_Popup_Object SalesP_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 210
    Set Label To "Sales Person Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oSalesP_DD is a cSalesPDataDictionary
    End_Object // oSalesP_DD

    Set Main_DD To oSalesP_DD
    Set Server  To oSalesP_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 200
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "SalesP_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oSalesP_ID is a cDbCJGridColumn
            Entry_Item SalesP.ID
            Set piWidth to 60
            Set psCaption to "ID"
        End_Object // oSalesP_ID

        Object oSalesP_Name is a cDbCJGridColumn
            Entry_Item SalesP.Name
            Set piWidth to 225
            Set psCaption to "Name"
        End_Object // oSalesP_Name


    End_Object // oSelList

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 47
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object // oOk_bn

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 101
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object // oCancel_bn

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 155
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object // oSearch_bn

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // SalesP_sl
