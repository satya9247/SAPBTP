
using { sap.cap.ordershop as my } from '../db/schema';
service productshop {
  entity product as projection on my.product
  entity supplier as projection on my.supplier
    entity Orders as projection on my.Orders

  extend my.product with {
    color : String
  }

function addNumber (a: Integer, b: Integer) returns Integer;

action subractAction (a: Integer, b: Integer) returns Integer;

} 