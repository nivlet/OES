// C:\Users\philip.waller\Documents\Training\Assignments\Day 9 021414\PPW OrderTutorial\AppSrc\OrderEntryView.vw
// Order Entry View
//

Use DFClient.pkg
Use DFEntry.pkg
Use dfSpnEnt.pkg
Use dfcentry.pkg
Use cDbCJGrid.pkg
Use cDbCJGridColumn.pkg

Use cCustomerDataDictionary.dd
Use cSalesPDataDictionary.dd
Use cVendorDataDictionary.dd
Use cOrderHeaDataDictionary.dd
Use cInvtDataDictionary.dd
Use cOrderDtlDataDictionary.dd
Use Windows.pkg

ACTIVATE_VIEW Activate_oOrderEntryView FOR oOrderEntryView
Object oOrderEntryView is a dbView
    Set Location to 5 5
    Set Size to 176 395
    Set Label To "Order Entry View"
    Set Border_Style to Border_Thick


    Object oCustomer_DD is a cCustomerDataDictionary
    End_Object // oCustomer_DD

    Object oSalesP_DD is a cSalesPDataDictionary
    End_Object // oSalesP_DD

    Object oVendor_DD is a cVendorDataDictionary
    End_Object // oVendor_DD

    Object oOrderHea_DD is a cOrderHeaDataDictionary
        Set DDO_Server To oCustomer_DD
        Set DDO_Server To oSalesP_DD
    End_Object // oOrderHea_DD

    Object oInvt_DD is a cInvtDataDictionary
        Set DDO_Server To oVendor_DD
    End_Object // oInvt_DD

    Object oOrderDtl_DD is a cOrderDtlDataDictionary
        Set DDO_Server To oOrderHea_DD
        Set DDO_Server To oInvt_DD
        Set Constrain_File To OrderHea.File_Number
    End_Object // oOrderDtl_DD

    Set Main_DD To oOrderHea_DD
    Set Server  To oOrderHea_DD



    Object oOrderHeaOrder_Number is a dbForm
        Entry_Item OrderHea.Order_Number
        Set Size to 13 46
        Set Location to 5 56
        Set peAnchors to anLeftRight
        Set Label to "Order Number"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oOrderHeaOrder_Number

    Object oCustomerCustomer_Number is a dbForm
        Entry_Item Customer.Customer_Number
        Set Size to 13 42
        Set Location to 5 214
        Set peAnchors to anRight
        Set Label to "Customer Number"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
        
        // If order record exists, disallow entry in customer window.

    Procedure Refresh Integer iMode
        Handle  hoServer
        Boolean bCurrent
        
        Get Server to hoServer                 // get the DD
        Get HasRecord of hoServer to bCurrent  // has record in DD
        // Set DisplayOnly to True if bCurrent is non-zero
        Set Enabled_State to (not(bCurrent))
        Forward Send Refresh iMode             // do normal refresh
        // don't leave us sitting on a DisplayOnly window
        If (bCurrent and Focus(Self)=Self) Send Next
    End_Procedure  // Refresh


    End_Object // oCustomerCustomer_Number

    Object oOrderHeaOrder_Date is a dbSpinForm
        Entry_Item OrderHea.Order_Date
        Set Size to 13 66
        Set Location to 5 319
        Set peAnchors to anRight
        Set Label to "Order Date"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oOrderHeaOrder_Date

    Object oCustomerName is a dbForm
        Entry_Item Customer.Name
        Set Size to 13 200
        Set Location to 20 56
        Set peAnchors to anLeftRight
        Set Label to "Customer Name"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oCustomerName

    Object oCustomerAddress is a dbForm
        Entry_Item Customer.Address
        Set Size to 13 200
        Set Location to 35 56
        Set peAnchors to anLeftRight
        Set Label to "Street Address"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oCustomerAddress

    Object oOrderHeaOrdered_By is a dbForm
        Entry_Item OrderHea.Ordered_By
        Set Size to 13 66
        Set Location to 35 319
        Set peAnchors to anRight
        Set Label to "Ordered By"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oOrderHeaOrdered_By

    Object oCustomerCity is a dbForm
        Entry_Item Customer.City
        Set Size to 13 80
        Set Location to 50 56
        Set peAnchors to anLeftRight
        Set Label to "City/State/Zip"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oCustomerCity

    Object oCustomerState is a dbComboForm
        Entry_Item Customer.State
        Set Size to 13 39
        Set Location to 50 145
        Set peAnchors to anRight
        Set Label to ""
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oCustomerState

    Object oCustomerZip is a dbForm
        Entry_Item Customer.Zip
        Set Size to 13 66
        Set Location to 50 190
        Set peAnchors to anRight
        Set Label to ""
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oCustomerZip

    Object oSalesPID is a dbForm
        Entry_Item SalesP.ID
        Set Size to 13 46
        Set Location to 50 319
        Set peAnchors to anRight
        Set Label to "Sales Person Id"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
    End_Object // oSalesPID

    Object oOrderHeaTerms is a dbComboForm
        Entry_Item OrderHea.Terms
        Set Size to 13 80
        Set Location to 65 56
        Set peAnchors to anLeftRight
        Set Label to "Terms"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0
        Set Entry_State to False
    End_Object // oOrderHeaTerms

    Object oOrderHeaShip_Via is a dbComboForm
        Entry_Item OrderHea.Ship_Via
        Set Size to 13 91
        Set Location to 65 190
        Set peAnchors to anRight
        Set Label to "Ship Via"
        Set Label_Justification_mode to jMode_right
        Set Label_Col_Offset to 2
        Set Label_row_Offset to 0

        // Last DEO will attempt to save and enable to grid and then switch to it
        Procedure Switch 
            Boolean bEnabled
            Send Request_Save
            Send EnableObjects
            Get Enabled_State of oDetailGrid to bEnabled
            If bEnabled Begin
                Forward Send Switch
            End
        End_Procedure // Switch

    End_Object // oOrderHeaShip_Via

    Object oDetailGrid is a cDbCJGrid
        Set Size to 63 385
        Set Location to 88 5
        Set Server to oOrderDtl_DD
        Set Ordering to 1
        Set peAnchors to anAll
        Set psLayoutSection to "oOrderEntryView_oDetailGrid"
        Set pbAllowInsertRow to False
        Set pbHeaderPrompts to True

        Object oInvt_Item_ID is a cDbCJGridColumn
            Entry_Item Invt.Item_ID
            Set piWidth to 112
            Set psCaption to "Item ID"
        End_Object // oInvt_Item_ID

        Object oInvt_Description is a cDbCJGridColumn
            Entry_Item Invt.Description
            Set piWidth to 187
            Set psCaption to "Description"
        End_Object // oInvt_Description

        Object oInvt_Unit_Price is a cDbCJGridColumn
            Entry_Item Invt.Unit_Price
            Set piWidth to 67
            Set psCaption to "Unit Price"
        End_Object // oInvt_Unit_Price

        Object oOrderDtl_Price is a cDbCJGridColumn
            Entry_Item OrderDtl.Price
            Set piWidth to 67
            Set psCaption to "Price"
        End_Object // oOrderDtl_Price

        Object oOrderDtl_Qty_Ordered is a cDbCJGridColumn
            Entry_Item OrderDtl.Qty_Ordered
            Set piWidth to 60
            Set psCaption to "Quantity"
        End_Object // oOrderDtl_Qty_Ordered

        Object oOrderDtl_Extended_Price is a cDbCJGridColumn
            Entry_Item OrderDtl.Extended_Price
            Set piWidth to 84
            Set psCaption to "Total"
        End_Object // oOrderDtl_Extended_Price

    End_Object // oDetailGrid

    //-----------------------------------------------------------------------
    // Create Idle time to handle enabling / disabling of grid
    //-----------------------------------------------------------------------
    Object oIdle is a cIdleHandler
        Procedure OnIdle 
            Delegate Send OnIdle
        End_Procedure // OnIdle
    End_Object // oIdle

    Procedure OnIdle 
        Send EnableObjects
    End_Procedure // OnIdle

    Procedure EnableObjects 
        Boolean bChanged bRec
        Handle hoServer
        Get Server to hoServer
        Get Should_Save of hoServer to bChanged
        Get HasRecord of hoServer to bRec
        Set Enabled_State of oDetailGrid to (not(bChanged) and bRec)
    End_Procedure // EnableObjects

    Procedure Activating 
        Forward Send Activating
        Set pbEnabled of oIdle to True
    End_Procedure // Activating

    Procedure Deactivating 
        Set pbEnabled of oIdle to False
        Forward Send Deactivating
    End_Procedure // Deactivating

    //-----------------------------------------------------------------------
    // Create custom confirmation messages for save and delete
    // We must create the new functions and assign verify messages
    // to them.
    //-----------------------------------------------------------------------

    Function ConfirmDeleteHeader Returns Boolean
        Boolean bFail
        Get Confirm "Delete Entire Header and all detail?" to bFail
        Function_Return bFail
    End_Function // ConfirmDeleteHeader

    // Only confirm on the saving of new records
    Function ConfirmSaveHeader Returns Boolean
        Boolean bNoSave bHasRecord
        Handle  hoSrvr
        Get Server to hoSrvr
        Get HasRecord of hoSrvr to bHasRecord
        If not bHasRecord Begin
            Get Confirm "Save this NEW header?" to bNoSave
        End
        Function_Return bNoSave
    End_Function // ConfirmSaveOrder

    // Define alternate confirmation Messages
    Set Verify_Save_MSG       to GET_ConfirmSaveHeader
    Set Verify_Delete_MSG     to GET_ConfirmDeleteHeader
    // Saves in header should not clear the view
    Set Auto_Clear_Deo_State to False

    Object oPrintBtn is a Button
        Set Location to 158 5
        Set Label to "Print Order"
        Set peAnchors to anBottomLeft
    
        // fires when the button is clicked
        Procedure OnClick
            
        End_Procedure
    
    End_Object

    Object oOrderHea_Order_Total is a dbForm
        Entry_Item OrderHea.Order_Total
        Set Location to 158 330
        Set Size to 13 60
        Set Label to "Order Total:"
        Set Label_Col_Offset to 2
        Set Label_Justification_Mode to JMode_Right
        Set peAnchors to anBottomRight
    End_Object


End_Object // oOrderEntryView
