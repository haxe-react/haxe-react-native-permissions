package react.native.permissions;

@:enum
abstract PermissionStatus(String) to String {
	var Authorized = 'authorized' ;
	var Denied = 'denied'; 
	var Restricted = 'restricted';
	var Undetermined = 'undetermined';
}
