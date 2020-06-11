table 50100 Rooms
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; RoomId; Integer)
        {
            DataClassification = ToBeClassified;
            AutoIncrement = true;
        }
        field(2; RoomName; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Room Name';
        }

        field(3; TheOptions; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = New,Old,NewOld;
        }

        field(4; DateCreated; Date)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(5; TimeCreated; Time)
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }

        field(6; CreatedBy; Code[50])
        {
            DataClassification = ToBeClassified;
            Editable = false;
        }
    }

    keys
    {
        key(PK; RoomId)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        DateCreated := Today;
        TimeCreated := Time;
        CreatedBy := UserId;
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}