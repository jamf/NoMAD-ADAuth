//
//  ADUserTests.swift
//  NoMAD
//
//  Created by Joel Rennich on 9/10/17.
//  Copyright © 2017 Joel Rennich. All rights reserved.
//

import Foundation
import XCTest
@testable import NoMAD_ADAuth

class ADUserTests : XCTestCase {
    
    // some setup
    
    let session = NoMADSession.init(domain: "nomad.test", user: "aeng@NOMAD.TEST", type: .AD)

    override func setUp() {
        super.setUp()
    }
    
    
    func testAuth() {
        session.userPass = "Apple21!"
        session.authenticate()
    }

    func testUserLookup() {
        session.userInfo()
        print(session.site)
        print(session.userRecord)
    }
    
    func ticketList() {
        klistUtil.klist()
        klistUtil.defaultRealm = "NOMAD.TEST"
        print(klistUtil.state)
    }
}
