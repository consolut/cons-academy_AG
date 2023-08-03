$.context.SalesOrderHeader = {

	"request" : {},
 
	"response" : {}
 
 }

var body = 
{

	"ShipToParty": "$.context.ShipToParty",

	"SalesOrderType": "$.context.SalesOrderType",

	"TotalNetAmount": "$.context.OrderAmount.toString()",

	"SalesOrganization": "$.context.SalesOrganisation",

	"DistributionChannel": "$.context.DistributionChannel",

	"OrganizationDivision": "$.context.division"

}

$.context.SalesOrderHeader.request = body

	