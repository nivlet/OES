// OrderHea.sl
// Orders Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use cCustomerDataDictionary.dd
Use cSalesPDataDictionary.dd
Use cOrderHeaDataDictionary.dd

CD_Popup_Object OrderHea_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 416
    Set Label To "Orders Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oCustomer_DD is a cCustomerDataDictionary
    End_Object // oCustomer_DD

    Object oSalesP_DD is a cSalesPDataDictionary
    End_Object // oSalesP_DD

    Object oOrderHea_DD is a cOrderHeaDataDictionary
        Set DDO_Server To oCustomer_DD
        Set DDO_Server To oSalesP_DD
    End_Object // oOrderHea_DD

    Set Main_DD To oOrderHea_DD
    Set Server  To oOrderHea_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 406
        Set Location to 5 5
        Set peAnchors to anAll
        Set psLayoutSection to "OrderHea_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oOrderHea_Order_Number is a cDbCJGridColumn
            Entry_Item OrderHea.Order_Number
            Set piWidth to 81
            Set psCaption to "Order Number"
        End_Object // oOrderHea_Order_Number

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

        Object oOrderHea_Order_Date is a cDbCJGridColumn
            Entry_Item OrderHea.Order_Date
            Set piWidth to 90
            Set psCaption to "Order Date"
        End_Object // oOrderHea_Order_Date

        Object oOrderHea_Order_Total is a cDbCJGridColumn
            Entry_Item OrderHea.Order_Total
            Set piWidth to 99
            Set psCaption to "Order Total"
        End_Object // oOrderHea_Order_Total


    End_Object // oSelList

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 253
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object // oOk_bn

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 307
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object // oCancel_bn

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 361
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object // oSearch_bn

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // OrderHea_sl
