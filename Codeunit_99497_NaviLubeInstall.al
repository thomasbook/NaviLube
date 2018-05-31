codeunit 99497 NaviLubeInstall
{
    Subtype = Install;
    var
        NextLineNo : Integer;    

    trigger OnInstallAppPerCompany();
    var
        Vehicle : Record "WCI Vehicle";
        ServiceLog : Record "WCI Service Log";
    begin
        if Vehicle.IsEmpty() then begin
            InsertDefaultVehicle();
        end;
        if ServiceLog.IsEmpty then begin
            InsertDefaultServiceLog();
        end;
    end;

    local procedure InsertDefaultVehicle();
    begin
        InsertVehicle('0987654','10000','Mercedes Benz 3000',1);
        InsertVehicle('1234567','40000','Ford Ranger XLT',1);
        InsertVehicle('2223334','20000','Dodge Neon',1);
    end;
    
    local procedure InsertVehicle(VIN : Code[30]; "Customer No." : Code[20]; Description : text[30]; Transmission : Integer)
    var
        Vehicle : Record "WCI Vehicle";
    begin
       Vehicle.Init();
       Vehicle.VIN := VIN;
       Vehicle."Customer No." := "Customer No.";
       Vehicle.Description := Description;
       Vehicle.Transmission := Transmission;
       Vehicle.Insert();
    end; 

    local procedure InsertDefaultServiceLog();
    begin
        InsertServiceLog('0987654',Today,100.83,10097);
        InsertServiceLog('1234567',Today,491.23,24097);
        InsertServiceLog('2223334',Today,148.41,1097);
    end;
    local procedure InsertServiceLog(VIN : Code[30]; ServiceDate : Date; Amount : Decimal; Mileage : Integer)
    var
        ServiceLog : Record "WCI Service Log";
    begin
        NextLineNo += 10000;
        ServiceLog.Init();
        ServiceLog."Line No." := NextLineNo;
        ServiceLog.VIN := VIN;
        ServiceLog."Service Date" := ServiceDate;
        ServiceLog.Amount := Amount;
        ServiceLog.Validate(Mileage,Mileage);
        ServiceLog.Insert(true);
    end; 
}