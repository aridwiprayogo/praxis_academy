package com.example.batterylevel

import android.annotation.TargetApi
import android.content.Context
import android.content.ContextWrapper
import android.content.Intent
import android.content.IntentFilter
import android.os.*
import io.flutter.Log
import io.flutter.app.FlutterActivity
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        GeneratedPluginRegistrant.registerWith(this)

       Handler(Looper.getMainLooper()).post {
           Log.e(MainActivity::class.java.simpleName, "Running....")
           MethodChannel(flutterView, CHANNEL).setMethodCallHandler { methodCall, result ->
               if (methodCall.method == "getBatteryLevel"){
                   val batteryLevel = getBatteryLevel()
                   if (batteryLevel != -1){
                       result.success(batteryLevel)
                   }else{
                       result.error("UNAVAILABLE", "Battery level not available.", null)
                   }
               }else{
                   result.notImplemented()
               }
           }
       }
    }

    @TargetApi(Build.VERSION_CODES.ECLAIR)
    private fun getBatteryLevel(): Int {
        val batteryLevel: Int
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
            val batteryManager = getSystemService(Context.BATTERY_SERVICE) as BatteryManager
            batteryLevel = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
        } else {
            val intent = ContextWrapper(applicationContext).registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
            batteryLevel = intent?.getIntExtra(BatteryManager.EXTRA_LEVEL, -1)!! * 100 / intent.getIntExtra(BatteryManager.EXTRA_SCALE, -1)
        }
        return batteryLevel

    }

    companion object {
        private const val CHANNEL = "samples.flutter.dev/battery"
    }
}
