//
//  main.swift
//  CommandLineExec
//
//  Created by Patrick Roberts on 5/19/18.
//  Copyright © 2018 Patrick Roberts. All rights reserved.
//  uses John Sundells ShellOut https://github.com/JohnSundell/ShellOut
//  written for MasOSX 


import Foundation

print("    ")
print("**************************************************")
print("User Name: " + NSFullUserName())
print("Home Directory: " + NSHomeDirectoryForUser(NSFullUserName())!)
print("Root Directory: " + NSOpenStepRootDirectory())
print("Temp Directory : ", NSTemporaryDirectory())
print("Location : ", NSLocale.current.description)
print("**************************************************")
try print(" whoami: ",shellOut(to: "whoami"))
print("**************************************************")
try print("uptime: ",shellOut(to: "uptime"))
print("**************************************************")
try print("",shellOut(to: "ifconfig", arguments:["en0"]))
print("**************************************************")
try print("",shellOut(to: "lsof", arguments:["-i -n"]))
print("**************************************************")
try print("",shellOut(to: "netstat", arguments:["-i inet"]))
