package react.native.permissions;

import haxe.extern.EitherType;
import haxe.DynamicAccess;

@:jsRequire('react-native-permissions')
extern class Permissions {
	static function check(type:PermissionType):js.Promise<PermissionStatus>;
	static function openSettings():js.Promise<Dynamic>; // js.Promise<Void>
	static function request(type:PermissionType,?rationale:Rationale):js.Promise<PermissionStatus>;
#if android
	static function requestNotifications():js.Promise<NotificationsResponse>;
#end
#if ios
	static function requestNotifications(options:Array<NotificationOption>):js.Promise<NotificationsResponse>;
#end
	static function checkNotifications():js.Promise<NotificationsResponse>;
}

typedef Rationale = {
    title:String,
    message:String,
    ?buttonPositive:String,
    ?buttonNegative:String,
    ?buttonNeutral:String,
}

typedef NotificationsResponse={
	status:PermissionStatus,
#if ios
	settings:NotificationSettings,
#end
}

#if ios
@:enum
abstract NotificationOption(String) {
	var Alert = 'alert';
	var Badge = 'badge';
	var Sound = 'sound';
	var CriticalAlert = 'criticalAlert';
	var CarPlay = 'carPlay';
	var Provisional = 'provisional';
}
typedef NotificationSettings = {
	?alert:Bool,
	?badge:Bool,
	?sound:Bool,
	?lockScreen:Bool,
	?carPlay:Bool,
	?notificationCenter:Bool,
	?criticalAlert:Bool,
}
#end
