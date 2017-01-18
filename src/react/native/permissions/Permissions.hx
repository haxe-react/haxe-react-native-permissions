package react.native.permissions;

import js.Promise;
import haxe.extern.EitherType;

@:jsRequire('react-native-permissions', 'default')
extern class Permissions {
	public static function canOpenSettings():Promise<Bool>;
	public static function openSettings():Void;
	public static function getPermissionTypes():Promise<Array<PermissionType>>;
	public static function getPermissionStatus(type:PermissionType):Promise<Response>;
	public static function requestPermission(type:PermissionType #if ios , ?options:RequestOption #end):Promise<Response>;
	public static function checkMultiplePermissions(types:Array<PermissionType>):Promise<Array<Response>>;
}

#if ios

typedef RequestOption = EitherType<Location, Array<Notification>>;

@:enum 
abstract Location(String) {
	var Always = 'always';
	var WhenInUse = 'whenInUse';
}

@:enum 
abstract Notification(String) {
	var Alert = 'alert';
	var Badge = 'badge';
	var Sound = 'sound';
}

#end
