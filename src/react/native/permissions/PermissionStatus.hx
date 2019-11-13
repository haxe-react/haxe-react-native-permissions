package react.native.permissions;

@:enum
abstract PermissionStatus(String) to String {
	var Unavailable = 'unavailable';
	var Denied = 'denied';
	var Blocked = 'blocked';
	var Granted = 'granted';
}
