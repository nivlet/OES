// Invt.sl
// Inventory Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cVendorDataDictionary.dd
Use cInvtDataDictionary.dd

CD_Popup_Object Invt_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 353
    Set Label To "Inventory Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oVendor_DD is a cVendorDataDictionary
    End_Object // oVendor_DD

    Object oInvt_DD is a cInvtDataDictionary
        Set DDO_Server To oVendor_DD
    End_Object // oInvt_DD

    Set Main_DD To oInvt_DD
    Set Server  To oInvt_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 343
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "Invt_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oInvt_Item_ID is a cDbCJGridColumn
            Entry_Item Invt.Item_ID
            Set piWidth to 135
            Set psCaption to "Item ID"
        End_Object // oInvt_Item_ID

        Object oInvt_Description is a cDbCJGridColumn
            Entry_Item Invt.Description
            Set piWidth to 225
            Set psCaption to "Description"
        End_Object // oInvt_Description

        Object oInvt_Unit_Price is a cDbCJGridColumn
            Entry_Item Invt.Unit_Price
            Set piWidth to 81
            Set psCaption to "Unit Price"
        End_Object // oInvt_Unit_Price

        Object oInvt_On_Hand is a cDbCJGridColumn
            Entry_Item Invt.On_Hand
            Set piWidth to 58
            Set psCaption to "On Hand"
        End_Object // oInvt_On_Hand


    End_Object // oSelList

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 190
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object // oOk_bn

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 244
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object // oCancel_bn

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 298
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object // oSearch_bn

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // Invt_sl
