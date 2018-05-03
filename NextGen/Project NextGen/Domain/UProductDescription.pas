unit UProductDescription;

interface

uses ItemID, Money;

type
  TProductDescription = class
  private
    id: TItemID;
    price:TMoney;
    description:String;
  public
    Procedure ProductDescription(id:TItemID; price:TMoney; description:String);
    function getid:TItemID;
    function getPrice:TMoney;
    function getDescription:string;
  end;

implementation

{ TProductDescription }

function TProductDescription.getDescription: string;
begin
  result:=description;
end;

function TProductDescription.getId: TItemID;
begin
  result:=id;
end;

function TProductDescription.getPrice: TMoney;
begin
  result:=price;
end;

procedure TProductDescription.ProductDescription(id: TItemID; price: TMoney;
  description: String);
begin
  self.id:=id;
  self.price:=price;
  self.description:=description;
end;

end.
