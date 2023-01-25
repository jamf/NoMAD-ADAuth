//
//  KerberosCommand.m
//  
//
//  Created by Jacob Hearst on 1/24/23.
//

#import "include/KerberosCommand.h"
@import Foundation;
@import Kerberos.KerberosLogin;

@implementation KerberosCommand

+ (void)kSwitch:(const char *)principalName {
    KLPrincipal principal = NULL;
    int err = 0;

    err = KLCreatePrincipalFromString(principalName, kerberosVersion_V5, &principal);
    if (err) {
        NSLog(@"Error while creating KLPrincipal for '%s'", principalName);
        return;
    }

    /* Use the provided principal to set the system default */
    err = KLSetSystemDefaultCache (principal);

    if (err) {
        NSLog(@"error while setting the cache for principal '%s' to the system default", principalName);
    }

    if (principal) {
        KLDisposePrincipal (principal);
    }
}

@end
