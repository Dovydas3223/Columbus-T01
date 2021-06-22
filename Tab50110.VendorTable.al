table 50110 "Vendor Table"
{
    Caption = 'Vendor Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(10; "Vendor Name"; Text[100])
        {
            Caption = 'Vendor Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Vendor.Name where("No." = field("Vendor No.")));
        }
        field(20; "Item Category Code"; Code[10])
        {
            Caption = 'Item Category Code';
            TableRelation = "Item Category" where("Parent Category" = const(''));//Naudojama T5722 lentele
        }
        field(30; "Item Group Code"; Code[10])
        {
            Caption = 'Item Group Code';
            TableRelation = "Item Category" where("Parent Category" = field("Item Category Code"));
        }
        field(40; "Salesperson Code"; Code[10])
        {
            Caption = 'Salesperson Code';
            DataClassification = ToBeClassified;
            TableRelation = "Salesperson/Purchaser";
        }
    }
    keys
    {
        key(PK; "Vendor No.")
        {
            Clustered = true;
        }
    }

}


