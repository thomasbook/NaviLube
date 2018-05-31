table 99498 "WCI Vehicle"
{
    Caption = 'Vehicle';
    LookupPageId = "WCI Vehicle List";
    
    fields
    {
        field(1;VIN;Code[30])
        {
        }
        field(2;"Customer No.";Code[20])
        {           
            TableRelation = Customer."No." Where(Blocked=const(" "));
            ValidateTableRelation = true;            
        }
        field(3;Description;Text[50])
        {
        }
        field(4;Transmission;Option)
        {
            OptionMembers = "Automatic","4-Speed","5-Speed;Other";
        }
        field(5;"Total Service Visits";Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("WCI Service Log" where (VIN = field(VIN)));
            //Enabled = false;
        }
        field(6;"Total Service Dollars";Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = Sum("WCI Service Log".Amount where (VIN = field(VIN)));
            //Enabled = false;
        }
    }

    keys
    {
        key(PK;VIN)
        {
            Clustered = true;
        }
    }
    
    var
        myInt : Integer;

    trigger OnInsert();
    begin
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