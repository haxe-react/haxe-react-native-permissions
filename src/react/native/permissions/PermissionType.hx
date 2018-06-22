package react.native.permissions;

@:enum 
abstract PermissionType(String) {
	var Location = 'location';
	var Camera = 'camera';
	var Microphone = 'microphone';
	var Photo = 'photo';
	var Contacts = 'contacts';
	var Event = 'event';
	var Bluetooth = 'bluetooth';
	var Reminder = 'reminder';
	var Notification = 'notification';
	var BackgroundRefresh = 'backgroundRefresh';
	var SpeechRecognition = 'speechRecognition';
	var MediaLibrary = 'mediaLibrary';
	var Motion = 'motion';
	var Storage = 'storage';
	var CallPhone = 'callPhone';
	var ReadSms = 'readSms';
	var ReceiveSms = 'receiveSms';
}