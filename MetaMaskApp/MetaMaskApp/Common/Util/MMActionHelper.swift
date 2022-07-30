//
//  MMActionHelper.swift
//  MetaMaskApp
//
//  Created by TQ on 2022/7/30.
//

import Foundation
import SwiftUI

func doCopyAction(_ value: String) {
    UIPasteboard.general.setValue(value, forPasteboardType: "public.plain-text")
}
