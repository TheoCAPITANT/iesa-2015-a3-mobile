// 10
var optionalString: String? = "Hello"
println(optionalString == nil)
var optionalName: String? = nil //"John Applseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}
