page 99498 "WCI Vehicle List"
{
    PageType = List;
    SourceTable = "WCI Vehicle";
    Caption = 'Vehicle List';
    CardPageId = "WCI Vehicle Card";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(VIN;"VIN")
                {
                    
                }
                field("Customer No.";"Customer No.")
                {

                }
                field(Description;Description){}
                field(Transmission;Transmission){}
                field("Total Service Dollars";"Total Service Dollars"){}
                field("Total Service Visits";"Total Service Visits"){}
            }
        }
        
        area(factboxes)
        {
        }
    }

    actions
    {
        area(processing)
        {
            action(ActionName)
            {
                trigger OnAction();
                begin
                end;
            }
        }
    }
}