package react.native.permissions;

@:enum 
abstract PermissionType(String) {
#if android
	var AcceptHandover = 'android.permission.ACCEPT_HANDOVER';
	var AccessBackgroundLocation = 'android.permission.ACCESS_BACKGROUND_LOCATION';
	var AccessCoarseLocation = 'android.permission.ACCESS_COARSE_LOCATION';
	var AccessFineLocation = 'android.permission.ACCESS_FINE_LOCATION';
	var ActivityRecognition = 'android.permission.ACTIVITY_RECOGNITION';
	var AddVoicemail = 'com.android.voicemail.permission.ADD_VOICEMAIL';
	var AnswerPhoneCalls = 'android.permission.ANSWER_PHONE_CALLS';
	var BodySensors = 'android.permission.BODY_SENSORS';
	var CallPhone = 'android.permission.CALL_PHONE';
	var Camera = 'android.permission.CAMERA';
	var GetAccounts = 'android.permission.GET_ACCOUNTS';
	var ProcessOutgoingCalls = 'android.permission.PROCESS_OUTGOING_CALLS';
	var ReadCalendar = 'android.permission.READ_CALENDAR';
	var ReadCallLog = 'android.permission.READ_CALL_LOG';
	var ReadContacts = 'android.permission.READ_CONTACTS';
	var ReadExternalStorage = 'android.permission.READ_EXTERNAL_STORAGE';
	var ReadPhoneNumbers = 'android.permission.READ_PHONE_NUMBERS';
	var ReadPhoneState = 'android.permission.READ_PHONE_STATE';
	var ReadSms = 'android.permission.READ_SMS';
	var ReceiveMms = 'android.permission.RECEIVE_MMS';
	var ReceiveSms = 'android.permission.RECEIVE_SMS';
	var ReceiveWapPush = 'android.permission.RECEIVE_WAP_PUSH';
	var RecordAudio = 'android.permission.RECORD_AUDIO';
	var SendSms = 'android.permission.SEND_SMS';
	var UseSip = 'android.permission.USE_SIP';
	var WriteCalendar = 'android.permission.WRITE_CALENDAR';
	var WriteCallLog = 'android.permission.WRITE_CALL_LOG';
	var WriteContacts = 'android.permission.WRITE_CONTACTS';
	var WriteExternalStorage = 'android.permission.WRITE_EXTERNAL_STORAGE';
#end
#if ios
	var BluetoothPeripheral = 'ios.permission.BLUETOOTH_PERIPHERAL';
	var Calendars = 'ios.permission.CALENDARS';
	var Camera = 'ios.permission.CAMERA';
	var Contacts = 'ios.permission.CONTACTS';
	var FaceId = 'ios.permission.FACE_ID';
	var LocationAlways = 'ios.permission.LOCATION_ALWAYS';
	var LocationWhenInUse = 'ios.permission.LOCATION_WHEN_IN_USE';
	var MediaLibrary = 'ios.permission.MEDIA_LIBRARY';
	var Microphone = 'ios.permission.MICROPHONE';
	var Motion = 'ios.permission.MOTION';
	var PhotoLibrary = 'ios.permission.PHOTO_LIBRARY';
	var Reminders = 'ios.permission.REMINDERS';
	var Siri = 'ios.permission.SIRI';
	var SpeechRecognition = 'ios.permission.SPEECH_RECOGNITION';
	var Storekit = 'ios.permission.STOREKIT';
#end
}