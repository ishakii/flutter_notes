flutter build apk --split-per-abi

flutter build web --web-renderer canvaskit

flutter pub upgrade --major-versions

keytool -genkey -v -keystore c:\Users\hp\upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload

# Debug Sertifikası
C:\Users\hp\Desktop\projects\speedmood\android>gradlew signingReport

# Release Cert fingerprint
keytool -list -v -alias upload -keystore d:\key.jks

# Debug cert fingerprint
keytool -list -v -alias AndroidDebugKey -keystore C:\Users\hp\.android\debug.keystore

#
<app dir>/android/key.properties oluştur
storePassword=testpassword
keyPassword=testpassword
keyAlias=testkey
storeFile=D:/keystore.jks
