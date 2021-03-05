//
//  DTForgetPasswordViewModel.swift
//  DT
//
//  Created by Ye Keyon on 2020/7/26.
//  Copyright © 2020 dt. All rights reserved.
//

import UIKit
import RxSwift

class DTForgetPasswordViewModel: NSObject {
    
    func sendCode(accountId:Int?, mobile:String?, countryCode:String?) -> Observable<DTBaseResult> {
        return DTLoginSchedule.sendCode(accountId: accountId, mobile: mobile, countryCode: countryCode)
    }
    
    func modify(password:String, mobile:String, countryCode:String, validateCode:String?) -> Observable<DTBaseResult> {
        return DTLoginSchedule.modify(newPasswd: password, mobile: mobile, countryCode: countryCode, validateCode: validateCode)
    }
}
