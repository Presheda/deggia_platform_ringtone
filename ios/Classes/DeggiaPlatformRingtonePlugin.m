#import "DeggiaPlatformRingtonePlugin.h"
#if __has_include(<deggia_platform_ringtone/deggia_platform_ringtone-Swift.h>)
#import <deggia_platform_ringtone/deggia_platform_ringtone-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "deggia_platform_ringtone-Swift.h"
#endif

@implementation DeggiaPlatformRingtonePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDeggiaPlatformRingtonePlugin registerWithRegistrar:registrar];
}
@end
