package react.native.permissions;

@:jsRequire('react-native-permissions')
extern class Permissions {
	public static function canOpenSettings():js.Promise<PermissionResponse>;
	public static function openSettings():js.Promise<PermissionResponse>;
	public static function getPermissionTypes():js.Promise<PermissionResponse>;
	public static function getPermissionStatus(permission:AppPermission):js.Promise<PermissionResponse>;
	public static function requestPermission(permission:AppPermission #if ios , ?options:AppPermissionOption #end):js.Promise<PermissionResponse>;
	public static function checkMultiplePermissions(permissions:Array<AppPermission>):js.Promise<Array<PermissionResponse>>;
}

@:enum 
abstract AppPermission(String) {
	var Location = 'location';
	var Camera = 'camera';
	var Microphone = 'microphone';
	var Storage = 'photo';
	var Contacts = 'contacts';
	var Event = 'event';
	#if ios
	var Reminder = 'reminder';
	var Bluetooth = 'bluetooth';
	var Notification = 'notification';
	var BackgroundRefresh = 'backgroundRefresh';
	#end 
}

#if ios
@:enum 
abstract AppPermissionOption(String) {
	var Always = 'always';
	var WhenInUse = 'whenInUse';
}
#end

@:enum
abstract PermissionResponse(String) {
	var Authorized = 'authorized' ;
	var Denied = 'denied'; 
	#if ios var Restricted = 'restricted'; #end
	var Undetermined = 'undetermined';
}
