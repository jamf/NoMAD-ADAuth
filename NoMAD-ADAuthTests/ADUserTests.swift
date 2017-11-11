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

class ADUserTests : XCTestCase, NoMADUserSessionDelegate {
    
    // some setup
    
    let session = NoMADSession.init(domain: "nomad.test", user: "ftest@NOMAD.TEST", type: .AD)

    var expectation: XCTestExpectation?
    
    override func setUp() {
        super.setUp()
    }
    
    func testAuth() {
        session.userPass = "NoMADRocks1!"
        
        expectation = self.expectation(description: "Auth Succeeded")
        session.delegate = self
        session.authenticate()
        self.waitForExpectations(timeout: 10, handler: nil)
    }

    func testUserLookup() {
        session.userInfo()
        print(session.site)
        print(session.userRecord)
    }
    
    func ticketList() {
        //klistUtil.defaultRealm = "NOMAD.TEST"
        //print(klistUtil.state)
    }
    
    // MARK: Delegate
    
    func NoMADAuthenticationSucceded() {
        
        if expectation?.description == "Auth Succeeded" {
            print("Auth Succeeded")
            expectation?.fulfill()
             session.userInfo()
        } else {
            XCTFail()
        }

    }
    
    func NoMADAuthenticationFailed(error: Error, description: String) {
        print("Auth Failed")
    }
    
    func NoMADUserInformation(user: ADUserRecord) {
        print(user)
    }
}
