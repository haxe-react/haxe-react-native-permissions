package react.native.permissions;

@:enum
abstract PermissionStatus(String) {
	var Authorized = 'authorized' ;
	var Denied = 'denied'; 
	#if ios var Restricted = 'restricted'; #end
	var Undetermined = 'undetermined';
}
