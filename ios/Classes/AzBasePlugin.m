#import "AzBasePlugin.h"
#if __has_include(<az_base/az_base-Swift.h>)
#import <az_base/az_base-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "az_base-Swift.h"
#endif

@implementation AzBasePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAzBasePlugin registerWithRegistrar:registrar];
}
@end
