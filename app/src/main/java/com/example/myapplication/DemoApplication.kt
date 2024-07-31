package com.example.myapplication

import android.app.Application
import com.newrelic.agent.android.NewRelic

class DemoApplication : Application() {

    override fun onCreate() {
        super.onCreate()
        NewRelic
            .withApplicationToken("TOKEN_KEY-NRMA")
            .withCrashReportingEnabled(true)
            .start(this)
    }
}