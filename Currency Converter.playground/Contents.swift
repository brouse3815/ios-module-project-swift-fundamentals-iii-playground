import UIKit

enum Currency {
    case cad
    case mxn
    
}
let usToCad = 1.40
let usToMex = 23.69

//Change to mxn for mexican pesos

var currency: Currency = .cad
var conversion = 0.0


func convert(_ dollars: Double) -> Double {
    
    
    if currency == Currency.mxn{
        conversion = dollars * usToCad
    }else{ conversion = dollars * usToMex
        
        
    }
    return conversion
}
convert(5.50)
print(conversion)

func convert(amountString: String) -> String?{
    guard let amount = Double(amountString) else{
     return String(usToCad)
    }
    return String(usToMex)
}
convert(5.50)

let currentLocale = Locale.current
let currencySymbol = currentLocale.currencySymbol



let amountString = String(format: "$%.02f", conversion)
print(amountString)






