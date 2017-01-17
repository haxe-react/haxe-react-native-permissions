package react.native.permissions;

@:enum 
abstract PermissionType(String) {
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