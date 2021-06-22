page 50110 VendorPage
{

    ApplicationArea = All;
    Caption = 'VendorPage';
    PageType = List;
    SourceTable = "Vendor Table";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Vendor No."; Rec."Vendor No.")
                {
                    ToolTip = 'Specifies the value of the Vendor No. field';
                    ApplicationArea = All;
                }
                field("Vendor Name"; Rec."Vendor Name")
                {
                    ToolTip = 'Specifies the value of the Vendor Name field';
                    ApplicationArea = All;
                }
                field("Item Category Code"; Rec."Item Category Code")
                {
                    ToolTip = 'Specifies the value of the Item Category Code field';
                    ApplicationArea = All;
                }
                field("Item Group Code"; Rec."Item Group Code")
                {
                    ToolTip = 'Specifies the value of the Item Group Code field';
                    ApplicationArea = All;
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                    ToolTip = 'Specifies the value of the Salesperson Code field';
                    ApplicationArea = All;
                }
            }
        }
    }

}


