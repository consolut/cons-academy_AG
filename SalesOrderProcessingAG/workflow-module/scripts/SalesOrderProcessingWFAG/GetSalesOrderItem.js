$.context.SalesOrderItem = {

 

    "request" : {},
    "response" : {}

 

 }

var body = {

 
    "SalesOrderItem": $.context.salesOrderDetails.item.lineItem,

    "Material": $.context.salesOrderDetails.item.material,

    "RequestedQuantity": $.context.salesOrderDetails.item.quantity.toString()


}

$.context.SalesOrderItem.request = body