Use Windows.pkg
Use DFClient.pkg
Use cCustomerDataDictionary.dd
Use DFEntry.pkg
Use dfTabDlg.pkg
Use dfcentry.pkg
Use dfSpnEnt.pkg
Use cDbTextEdit.pkg

Deferred_View Activate_oCustomerView for ;
Object oCustomerView is a dbView
    Object oCustomer_DD is a cCustomerDataDictionary
    End_Object

    Set Main_DD to oCustomer_DD
    Set Server to oCustomer_DD

    Set Border_Style to Border_Thick
    Set Size to 163 300
    Set Location to 2 2
    Set Label to "Customer Entry View"

    Object oCustomer_Customer_Number is a dbForm
        Entry_Item Customer.Customer_Number
        Set Location to 6 70
        Set Size to 13 42
        Set Label to "Customer Number:"
        Set Label_Justification_Mode to JMode_Right
        Set Label_Col_Offset to 0
    End_Object

    Object oCustomer_Name is a dbForm
        Entry_Item Customer.Name
        Set Location to 21 70
        Set Size to 13 186
        Set Label to "Name:"
        Set Label_Justification_Mode to JMode_Right
        Set Label_Col_Offset to 0
    End_Object

    Object oDbTabDialog1 is a dbTabDialog
        Set Size to 110 279
        Set Location to 41 8
    
        Set Rotate_Mode to RM_Rotate

        Object oDbTabPage1 is a dbTabPage
            Set Label to "Address"

            Object oCustomer_Address is a dbForm
                Entry_Item Customer.Address
                Set Location to 12 57
                Set Size to 13 186
                Set Label to "Street Address:"
                Set Label_Col_Offset to 0
                Set Label_Justification_Mode to JMode_Right
            End_Object

            Object oCustomer_City is a dbForm
                Entry_Item Customer.City
                Set Location to 27 57
                Set Size to 13 90
                Set Label to "City:"
                Set Label_Justification_Mode to JMode_Right
                Set Label_Col_Offset to 0
            End_Object

            Object oCustomer_State is a dbComboForm
                Entry_Item Customer.State
                Set Location to 27 150
                Set Size to 13 37
            End_Object

            Object oCustomer_Zip is a dbForm
                Entry_Item Customer.Zip
                Set Location to 27 190
                Set Size to 13 66
            End_Object

            Object oCustomer_Phone_Number is a dbForm
                Entry_Item Customer.Phone_Number
                Set Location to 42 57
                Set Size to 13 126
                Set Label to "Phone Number:"
                Set Label_Col_Offset to 0
                Set Label_Justification_Mode to JMode_Right
            End_Object

            Object oCustomer_Fax_Number is a dbForm
                Entry_Item Customer.Fax_Number
                Set Location to 57 57
                Set Size to 13 126
                Set Label to "Fax Number:"
                Set Label_Justification_Mode to JMode_Right
                Set Label_Col_Offset to 0
            End_Object

            Object oCustomer_EMail_Address is a dbForm
                Entry_Item Customer.EMail_Address
                Set Location to 73 57
                Set Size to 13 186
                Set Label to "EMail Address:"
                Set Label_Justification_Mode to JMode_Right
                Set Label_Col_Offset to 0
            End_Object
        End_Object

        Object oDbTabPage2 is a dbTabPage
            Set Label to "Balances"

            Object oCustomer_Credit_Limit is a dbSpinForm
                Entry_Item Customer.Credit_Limit
                Set Location to 15 70
                Set Size to 13 67
                Set Label to "Credit Limit:"
                Set Label_Col_Offset to 0
                Set Label_Justification_Mode to JMode_Right
            End_Object

            Object oCustomer_Purchases is a dbForm
                Entry_Item Customer.Purchases
                Set Location to 31 70
                Set Size to 13 54
                Set Label to "Total Purchases:"
                Set Label_Justification_Mode to JMode_Right
                Set Label_Col_Offset to 0
            End_Object

            Object oCustomer_Balance is a dbForm
                Entry_Item Customer.Balance
                Set Location to 45 70
                Set Size to 13 54
                Set Label to "Balance Due:"
                Set Label_Justification_Mode to JMode_Right
                Set Label_Col_Offset to 0
            End_Object
        End_Object

        Object oDbTabPage3 is a dbTabPage
            Set Label to "Comments"

            Object oCustomer_Comments is a cDbTextEdit
                Entry_Item Customer.Comments
                Set Location to 9 11
                Set Size to 77 253
            End_Object
        End_Object
    
    End_Object

Cd_End_Object
