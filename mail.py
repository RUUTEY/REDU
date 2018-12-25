import smtplib
import africastalking
import string

class SMS:
    def __init__(self):
        self.username = "sandbox"
        self.API_KEY = "f605ae37a8f8c138b4671285d4f2422527105b92a56d8d81cf350d717fc09c10"
        #connecting to Africastalking API Gateway
        africastalking.initialize(self.username,self.API_KEY)
        sms = africastalking.SMS

    def mobile_message(message,recipient):
        try:
            sms.send(message,[recipient])
        except Exception as e:
            print("The message was not sent")


class email:
    def __init__(self):
    #initializing the email host
        host = smtplib.SMTP_SSL("smtp.gmail.com",465)
        sch_email = str(input("Enter the school's email address"))
        sch_password = str(input("Enter the school password"))
        host.login(sch_email,sch_password)

        #logging into the email host
        email = input("Enter your email address")
        passcode = input("Enter your password")
        host.login(email,passcode)

    #sending the mail messsage
    def email(self,message,rec):
        self.messsage = message
        self.rec = rec 
        try:
            host.sendmail(sch_email,rec,message)
            print("Email has been sent")
        except smtplib.SMTPException:
            print("Email not sent!!")



    