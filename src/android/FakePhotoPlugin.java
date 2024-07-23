package com.accenture.np.plugin;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import com.accenture.np.nativefakephoto.FakePhotoHelper;
/**
* This class echoes a string called from JavaScript.
*/
public class FakePhotoPlugin extends CordovaPlugin {

    @Override
    public boolean execute(String action, JSONArray args, CallbackContext callbackContext) throws JSONException {
        if (action.equals("isFakePhoto")) {
            String pbFile = args.getString(0);
            String imgFile = args.getString(1);
            String strJson = FakePhotoHelper.isFakePhoto(pbFile, imgFile);
            JSONObject r = new JSONObject(strJson);
            callbackContext.success(r);
            return true;
        }
        return false;
    }
}
