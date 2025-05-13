// android/build.gradle (Kotlin DSL)
buildscript {
    repositories {
        google()
        mavenCentral()
    }
    dependencies {
        // Plugin for Android Gradle
        classpath("com.android.tools.build:gradle:8.2.1")

        // Plugin for Firebase
        classpath("com.google.gms:google-services:4.3.15")
    }
}

allprojects {
    repositories {
        google()
        mavenCentral()
    }
}

tasks.register<Delete>("clean") {
    delete(rootProject.layout.buildDirectory)
}
