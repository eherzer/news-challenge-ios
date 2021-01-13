//
//  String+Trimm.swift
//  News Challenge
//
//  Created by Eduardo Herzer on 12/01/21.
//

import Foundation

extension String {
    func trimm() -> String {
        return self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
}
