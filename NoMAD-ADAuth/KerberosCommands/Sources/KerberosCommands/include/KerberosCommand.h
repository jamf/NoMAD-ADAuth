//
//  KerberosCommand.h
//  
//
//  Created by Jacob Hearst on 1/24/23.
//

#ifndef KerberosCommand_h
#define KerberosCommand_h

@import Foundation;

@interface KerberosCommand : NSObject

+ (void)kSwitch:(const char *)principalName;

@end

#endif /* KerberosCommand_h */
