import 'dart:developer';
import 'dart:io';
import 'dart:math' as math;

import 'package:delivery_food/core/errors/custom_exception.dart';
import 'package:mailer/mailer.dart';
import 'package:mailer/smtp_server.dart';

class SendEmailService {
  static Future<String> generateCode() async {
    final random = math.Random();
    final code = 1000 + random.nextInt(9000);
    return code.toString();
  }

  // method to send email to user;

  static Future<void> sendEmailToUser({required String email}) async {
    final smtpServer = gmail("mohamedessam2003147@gmail.com", "mnzbinakfocagvjs");

    // cofigure message;
    final message = Message()
      ..from = const Address("delivetryfood@gmail.com", "mohamed Essam")
      ..recipients.add(email);
    message.subject = "Reset Password"; 
    final code = await generateCode(); 
    message.text = "Your verification to reset your password code is $code";

    try {
  await send(message, smtpServer);
} on MailerException catch (e) {
  log("Error when send email code= ${e.toString()} and message= ${e.message.toString()}");
  throw CustomException(errorMessage: "there was an error please try again later");
}
  on SocketException {
    throw CustomException(errorMessage: "check your internet connection");
  }
  catch (e){
    throw CustomException(errorMessage: "there was an error, please try again later");
  }
  }
}
