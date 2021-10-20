# FLUTTER FACEBOOK LOGIN
keytool -exportcert -alias AndroidDebugKey -keystore "C:\Users\hp\.android\debug.keystore" | "C:\src\openssl\bin\openssl" sha1 -binary | "C:\src\openssl\bin\openssl" base64

indirme linki
(openssl için openssl-0.9.8e_X64.zip kullanılmalı. k olan versiyon doğru hash üretmiyor.)
https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/openssl-for-windows/openssl-0.9.8e_X64.zip

Key hash bunun gibi olmalı:
y0WZhiIcfncF1yg4F69UsXHOIdd=

keytool -exportcert -alias upload -keystore "D:\key.jks" | "C:\src\openssl\bin\openssl" sha1 -binary | "C:\src\openssl\bin\openssl" base64
