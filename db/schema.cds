namespace sap.cap.ordershop;

using {managed, cuid} from '@sap/cds/common';

aspect additioninfo {

    mfdate: String;
    expdate: String;
}

entity product: additioninfo, managed, cuid
{
   //key ID: UUID;
    name: String;
    stock: String;
    cost: pricedetails;
    supplier: Association to supplier;
    ord : composition of many Orders

}

 type pricedetails

 {
    Price: String;
   // quantity: String
 }

 entity supplier
 {
    key ID: String;
    name: String;
    product: Association to many product on product.supplier = $self

 }


 entity Orders {
   
   key ID: String;
   orderdetails: String;
   execution: Association to product

 }
   
   
 

    

 

