Set WshNetwork = CreateObject ("WScript.Network")
on error resume next
PrinterPath = "\\imcserver5\mono-sociale"
WshNetwork.RemovePrinterConnection PrinterPath, true, true
WshNetwork.AddwindowsPrinterConnection (PrinterPath)