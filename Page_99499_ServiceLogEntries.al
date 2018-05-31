page 99499 "WCI Service Log Entries"
{
    PageType = List;
    SourceTable = "WCI Service Log";
    Caption = 'Service Log';
    AutoSplitKey = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Line No.";"Line No.")
                {
                    Visible = false;
                }
                field(VIN;VIN){}
                field("Service Date";"Service Date"){}
                field("Customer No.";"Customer No."){}
                field(Amount;Amount){}
                field("Fluids Checked";"Fluids Checked"){}
                field(Mileage;Mileage){}
                field("Next Service Mileage";"Next Service Mileage"){}
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