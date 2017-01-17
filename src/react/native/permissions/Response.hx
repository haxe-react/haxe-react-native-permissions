package react.native.permissions;

@:enum
abstract Response(String) {
	var Authorized = 'authorized' ;
	var Denied = 'denied'; 
	#if ios var Restricted = 'restricted'; #end
	var Undetermined = 'undetermined';
}
