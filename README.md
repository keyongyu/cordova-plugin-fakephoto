# cordova-plugin-fakephoto
usage:  
   NP.isFakePhoto(function(fakeResult){ 
        alert("IsFakePhoto return:"+ JSON.stringify(fakeResult));
        if(fakeResult.success){
            alert("IsFakePhoto.probability:"+fakeResult.probability);
            alert("IsFakePhoto.isFakePhoto:"+fakeResult.isFakePhoto);
        }
    }, "/data/local/tmp/NPFakePhoto.pb","/data/local/tmp/ferrero.jpg");
