$.context.SalesOrderItem = {

 

    "request" : {},
    "response" : {}

 

 }

var body = {

 
    "LineItem": $.context.salesOrderDetails.item.lineItem,

    "Material": $.context.salesOrderDetails.item.material,

    "Quantity": $.context.salesOrderDetails.item.quantity.toString()


}

$.context.SalesOrderItem.request = body