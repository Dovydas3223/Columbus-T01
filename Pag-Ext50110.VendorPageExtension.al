pageextension 50110 VendorPageExtension extends "Vendor Card"
{



    actions
    {
        addlast(reporting)
        {

            action(OpenNewpage)
            {

                Caption = 'Open New Page';



                RunObject = page VendorPage;
                RunPageLink = "Vendor No." = field("No.");
                RunPageView = sorting("Vendor No.") order(descending);
            }
        }
    }

    var
        MyTable: Record "Vendor Table";


}