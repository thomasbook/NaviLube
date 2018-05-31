page 99497 "WCI Vehicle Card"
{
    PageType = Card;
    SourceTable = "WCI Vehicle";
    Caption = 'Vehicle Card';

    layout
    {
        area(content)
        {
            group(GroupName)
            {
                field(VIN;VIN){}
                field("Customer No.";"Customer No."){}
                field(Description;Description){}
                field(Transmission;Transmission){}
                field("Total Service Dollars";"Total Service Dollars"){}
                field("Total Service Visits";"Total Service Visits"){}
                
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Print Report")
            {
               // report.run(Report::VehicleListReport);                
                
            }
        }
    }
    
    var
        myInt : Integer;
}