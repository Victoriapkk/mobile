require "appium_lib"
require "cucumber"


def caps
    { caps:
        { deviceName: "SM_A505GT", 
		  udid: "RQ8M6066B3F",
          platformName: "Android",
          app: (File.join(File.dirname(__FILE__), "ExactCalculator.apk")), 
          newCommandTimeout: "5000"
        }
    
    }
end

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object