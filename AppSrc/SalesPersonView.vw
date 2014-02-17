// C:\Users\philip.waller\Documents\Training\Assignments\Day 9 021414\PPW OrderTutorial\AppSrc\SalesPersonView.vw
// Sales Person Entry View
//

Use DFClient.pkg
Use DFEntry.pkg

Use cSalesPDataDictionary.dd

ACTIVATE_VIEW Activate_oSalesPersonView FOR oSalesPersonView
Object oSalesPersonView is a dbView
    Set Location to 5 5
    Set Size to 38 187
    Set Label To "Sales Person Entry View"
    Set Border_Style to Border_Thick


    Object oSalesP_DD is a cSalesPDataDictionary
    End_Object // oSalesP_DD

    Set Main_DD To oSalesP_DD
    Set Server  To oSalesP_DD



    Object oSalesPID is a dbForm
        Entry_Item SalesP.ID
        Set Size to 13 46
        Set Location to 5 26
        Set peAnchors to anLeftRight
        Set Label to "ID"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oSalesPID

    Object oSalesPName is a dbForm
        Entry_Item SalesP.Name
        Set Size to 13 156
        Set Location to 20 26
        Set peAnchors to anLeftRight
        Set Label to "Name"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oSalesPName


End_Object // oSalesPersonView
