package react.native.permissions;

import js.Promise;
import haxe.extern.EitherType;
import haxe.DynamicAccess;

@:jsRequire('react-native-permissions', 'default')
extern class Permissions {
	
	#if ios
	@:overload(function(type:PermissionType, location:Location):Promise<PermissionStatus> {})
	#end
	public static function check(type:PermissionType):Promise<PermissionStatus>;
	
	#if ios
	@:overload(function(type:PermissionType, notification:Array<Notification>):Promise<PermissionStatus> {})
	@:overload(function(type:PermissionType, location:Location):Promise<PermissionStatus> {})
	#end
	public static function request(type:PermissionType):Promise<PermissionStatus>;
	
	public static function checkMultiple(types:Array<PermissionType>):Promise<DynamicAccess<PermissionStatus>>;
	
	public static function getTypes():Array<PermissionType>;
	
	public static function openSettings():Void;
	
	public static function canOpenSettings():js.Promise<Bool>;
}

#if ios

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
