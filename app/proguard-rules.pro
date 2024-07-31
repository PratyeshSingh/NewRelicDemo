# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile


-keep class com.newrelic.** { *; }
-dontwarn com.newrelic.**
-keepattributes Exceptions, Signature, InnerClasses, LineNumberTable, SourceFile, EnclosingMethod

##
## NewRelic Gradle plugin 7.x may require the following additions:
##
# Retain generic signatures of TypeToken and its subclasses if R8 version 3.0 full-mode is enabled.
# https://r8.googlesource.com/r8/+/refs/heads/master/compatibility-faq.md#r8-full-mode
-keepattributes Signature
-keep class com.newrelic.com.google.gson.reflect.TypeToken { *; }
-keep class * extends com.newrelic.com.google.gson.reflect.TypeToken
# For using GSON @Expose annotation
-keepattributes *Annotation*

-keep class okhttp3.** { *; }
-dontwarn okhttp3.**
-dontwarn okio.**
