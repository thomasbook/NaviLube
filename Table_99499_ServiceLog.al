
table 99499 "WCI Service Log"
{
    Caption = 'Service Log';
    DrillDownPageId = "WCI Service Log Entries";

    fields
    {
        field(1;"Line No.";Integer){}
        field(2;VIN;CODE[30])
        {
            TableRelation = "WCI Vehicle".VIN;
            ValidateTableRelation = true;            
        }
        field(3;"Service Date";Date)
        {
             
        }
        field(4;"Customer No.";Code[20])
        {
            TableRelation = Customer."No." Where(Blocked=const(" "));
            ValidateTableRelation = true;       
        }
        field(5;Amount;Decimal){}
        field(6;"Fluids Checked";Boolean){}
        field(7;Mileage;Integer)
        {
            trigger OnValidate();
            begin
                "Next Service Mileage" := Mileage + 3000;
            end;
        }
        field(8;"Next Service Mileage";Integer){}
    }

    keys
    {
        key(PK;"Line No.")
        {
            Clustered = true;
        }
        key(SK;VIN)
        {
           
        }
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
        "Service Date" := Today;
    end;

    trigger OnModify();
    begin
    end;

    trigger OnDelete();
    begin
    end;

    trigger OnRename();
    begin
    end;

}