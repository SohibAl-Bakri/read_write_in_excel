// import 'package:royal_soft_task/resources/helpers/all_imports.dart';

// class NotificationService {
//   NotificationService._();

//   static final NotificationService _instance = NotificationService._();

//   factory NotificationService() => _instance;

//   static Future<void> _firebaseMessagingBackgroundHandler(
//     RemoteMessage message,
//   ) async {}

//   Future<RemoteMessage?> getInitialMessage() async {
//     final RemoteMessage? message =
//         await FirebaseMessaging.instance.getInitialMessage();
//     return message;
//   }

//   Future<void> initNotifications() async {
//     await _initFirebaseMessaging();
//     await _initLocalNotifications();
//   }

//   Future<void> initListenersAndPermission() async {
//     _requestPermissions();
//   }

//   Future<String?> getNotificationToken() async {
//     String? notificationToken;
//     try {
//       notificationToken = await FirebaseMessaging.instance.getToken();
//     } catch (_) {}
//     return notificationToken;
//   }

//   @pragma('vm:entry-point')
//   void notificationTapBackground(NotificationResponse notificationResponse) {}
//   final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   Future<void> _initLocalNotifications() async {
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('app_icon');
//     const DarwinInitializationSettings initializationSettingsDarwin =
//         DarwinInitializationSettings();
//     const LinuxInitializationSettings initializationSettingsLinux =
//         LinuxInitializationSettings(defaultActionName: 'Open notification');
//     const InitializationSettings initializationSettings =
//         InitializationSettings(
//           android: initializationSettingsAndroid,
//           iOS: initializationSettingsDarwin,
//           macOS: initializationSettingsDarwin,
//           linux: initializationSettingsLinux,
//         );
//     await flutterLocalNotificationsPlugin.initialize(
//       initializationSettings,
//       onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
//     );
//     await createNotificationChannels();
//   }

//   Future<void> createNotificationChannels() async {
//     const AndroidNotificationChannel androidNotificationChannel =
//         AndroidNotificationChannel(
//           'default_notification_channel_id',
//           'default notification channel',
//           importance: Importance.max,
//         );

//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//           AndroidFlutterLocalNotificationsPlugin
//         >()
//         ?.createNotificationChannel(androidNotificationChannel);
//   }

//   void onDidReceiveNotificationResponse(
//     NotificationResponse notificationResponse,
//   ) async {}

//   Future<void> _requestPermissions() async {
//     if (Platform.isIOS || Platform.isMacOS) {
//       await flutterLocalNotificationsPlugin
//           .resolvePlatformSpecificImplementation<
//             IOSFlutterLocalNotificationsPlugin
//           >()
//           ?.requestPermissions(alert: true, badge: true, sound: true);
//       await flutterLocalNotificationsPlugin
//           .resolvePlatformSpecificImplementation<
//             MacOSFlutterLocalNotificationsPlugin
//           >()
//           ?.requestPermissions(alert: true, badge: true, sound: true);
//     } else if (Platform.isAndroid) {
//       flutterLocalNotificationsPlugin
//           .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin
//           >()
//           ?.requestNotificationsPermission();
//     }
//   }

//   void onDidReceiveLocalNotification(
//     int id,
//     String? title,
//     String? body,
//     String? payload,
//   ) async {
//     _showNotification(title: '$title', body: '$body', payload: payload);
//   }

//   Future<void> _initFirebaseMessaging() async {
//     await FirebaseMessaging.instance.requestPermission(provisional: true);
//     FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//     final Stream<RemoteMessage> onMessageOpenedAppStream =
//         FirebaseMessaging.onMessageOpenedApp;
//     onMessageOpenedAppStream.listen((RemoteMessage event) async {});

//     final Stream<RemoteMessage> onMessageStream = FirebaseMessaging.onMessage;
//     onMessageStream.listen((RemoteMessage event) async {
//       _showNotification(
//         title: event.notification!.title!,
//         body: event.notification!.body!,
//         payload: event.data.toString(),
//       );
//     });
//   }

//   Future<void> _showNotification({
//     required String title,
//     required String body,
//     String? payload,
//   }) async {
//     const AndroidNotificationDetails androidNotificationDetails =
//         AndroidNotificationDetails(
//           'default_notification_channel_id',
//           'default notification channel',
//           channelDescription: 'default notification channel description',
//           importance: Importance.max,
//           priority: Priority.high,
//         );
//     const DarwinNotificationDetails darwinNotificationDetails =
//         DarwinNotificationDetails();
//     const LinuxNotificationDetails linuxPlatformChannelSpecifics =
//         LinuxNotificationDetails();
//     const NotificationDetails notificationDetails = NotificationDetails(
//       android: androidNotificationDetails,
//       iOS: darwinNotificationDetails,
//       macOS: darwinNotificationDetails,
//       linux: linuxPlatformChannelSpecifics,
//     );
//     await flutterLocalNotificationsPlugin.show(
//       _createUniqueId(),
//       title,
//       body,
//       payload: payload,
//       notificationDetails,
//     );
//   }

//   int _createUniqueId() {
//     return DateTime.now().millisecondsSinceEpoch.remainder(100000);
//   }
// }
