// C:\Users\philip.waller\Documents\Training\Assignments\Day 9 021414\PPW OrderTutorial\AppSrc\InventoryView.vw
// Inventory Item View
//

Use DFClient.pkg
Use DFEntry.pkg

Use cVendorDataDictionary.dd
Use cInvtDataDictionary.dd
Use dfallent.pkg

ACTIVATE_VIEW Activate_oInventoryView FOR oInventoryView
Object oInventoryView is a dbView
    Set Location to 5 5
    Set Size to 145 281
    Set Label To "Inventory Item View"
    Set Border_Style to Border_Thick


    Object oVendor_DD is a cVendorDataDictionary
    End_Object // oVendor_DD

    Object oInvt_DD is a cInvtDataDictionary
        Set DDO_Server To oVendor_DD
    End_Object // oInvt_DD

    Set Main_DD To oInvt_DD
    Set Server  To oInvt_DD



    Object oInvtItem_ID is a dbForm
        Entry_Item Invt.Item_ID
        Set Size to 13 102
        Set Location to 5 54
        Set peAnchors to anLeftRight
        Set Label to "Item ID"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oInvtItem_ID

    Object oInvtDescription is a dbForm
        Entry_Item Invt.Description
        Set Size to 13 222
        Set Location to 20 54
        Set peAnchors to anLeftRight
        Set Label to "Description"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oInvtDescription

    Object oDbGroup1 is a dbGroup
        Set Size to 63 271
        Set Location to 38 4
        Set Label to "Vendor"

        Object oVendorID is a dbForm
            Entry_Item Vendor.ID
            Set Size to 13 50
            Set Location to 10 54
            Set peAnchors to anLeftRight
            Set Label to "ID"
            Set Label_Justification_mode to jMode_right
            Set Label_Col_Offset to 2
            Set Label_row_Offset to 0
        End_Object // oVendorID
        Object oVendorName is a dbForm
            Entry_Item Vendor.Name
            Set Size to 13 175
            Set Location to 25 54
            Set peAnchors to anLeftRight
            Set Label to "Name"
            Set Label_Justification_mode to jMode_right
            Set Label_Col_Offset to 2
            Set Label_row_Offset to 0
        End_Object // oVendorName
        Object oInvtVendor_Part_ID is a dbForm
            Entry_Item Invt.Vendor_Part_ID
            Set Size to 13 100
            Set Location to 40 54
            Set peAnchors to anLeftRight
            Set Label to "Vendor Part ID"
            Set Label_Justification_mode to jMode_right
            Set Label_Col_Offset to 2
            Set Label_row_Offset to 0
        End_Object // oInvtVendor_Part_ID
    End_Object

    Object oDbGroup2 is a dbGroup
        Set Size to 36 271
        Set Location to 103 4

        Object oInvtUnit_Price is a dbForm
            Entry_Item Invt.Unit_Price
            Set Size to 13 75
            Set Location to 13 41
            Set peAnchors to anLeftRight
            Set Label to "Unit Price"
            Set Label_Justification_mode to jMode_right
            Set Label_Col_Offset to 2
            Set Label_row_Offset to 0
        End_Object // oInvtUnit_Price
        Object oInvtOn_Hand is a dbForm
            Entry_Item Invt.On_Hand
            Set Size to 13 50
            Set Location to 13 167
            Set peAnchors to anLeftRight
            Set Label to "On Hand"
            Set Label_Justification_mode to jMode_right
            Set Label_Col_Offset to 2
            Set Label_row_Offset to 0
        End_Object // oInvtOn_Hand
    End_Object


End_Object // oInventoryView
