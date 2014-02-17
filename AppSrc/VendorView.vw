// C:\Users\philip.waller\Documents\Training\Assignments\Day 9 021414\PPW OrderTutorial\AppSrc\VendorView.vw
// Vendor Entry View
//

Use DFClient.pkg
Use DFEntry.pkg
Use dfcentry.pkg

Use cVendorDataDictionary.dd

ACTIVATE_VIEW Activate_oVendorView FOR oVendorView
Object oVendorView is a dbView
    Set Location to 5 5
    Set Size to 128 245
    Set Label To "Vendor Entry View"
    Set Border_Style to Border_Thick


    Object oVendor_DD is a cVendorDataDictionary
    End_Object // oVendor_DD

    Set Main_DD To oVendor_DD
    Set Server  To oVendor_DD



    Object oVendorID is a dbForm
        Entry_Item Vendor.ID
        Set Size to 13 42
        Set Location to 5 54
        Set peAnchors to anLeftRight
        Set Label to "ID"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oVendorID

    Object oVendorName is a dbForm
        Entry_Item Vendor.Name
        Set Size to 13 186
        Set Location to 20 54
        Set peAnchors to anLeftRight
        Set Label to "Name"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oVendorName

    Object oVendorAddress is a dbForm
        Entry_Item Vendor.Address
        Set Size to 13 186
        Set Location to 35 54
        Set peAnchors to anLeftRight
        Set Label to "Address"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oVendorAddress

    Object oVendorCity is a dbForm
        Entry_Item Vendor.City
        Set Size to 13 90
        Set Location to 50 54
        Set peAnchors to anLeftRight
        Set Label to "City"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oVendorCity

    Object oVendorState is a dbComboForm
        Entry_Item Vendor.State
        Set Size to 13 39
        Set Location to 65 54
        Set peAnchors to anLeftRight
        Set Label to "State"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oVendorState

    Object oVendorZip is a dbForm
        Entry_Item Vendor.Zip
        Set Size to 13 66
        Set Location to 80 54
        Set peAnchors to anLeftRight
        Set Label to "Zip"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oVendorZip

    Object oVendorPhone_Number is a dbForm
        Entry_Item Vendor.Phone_Number
        Set Size to 13 126
        Set Location to 95 54
        Set peAnchors to anLeftRight
        Set Label to "Phone Number"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oVendorPhone_Number

    Object oVendorFax_Number is a dbForm
        Entry_Item Vendor.Fax_Number
        Set Size to 13 126
        Set Location to 110 54
        Set peAnchors to anLeftRight
        Set Label to "Fax Number"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oVendorFax_Number


End_Object // oVendorView
