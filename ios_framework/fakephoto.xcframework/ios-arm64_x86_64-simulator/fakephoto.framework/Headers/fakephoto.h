//
//  fakephoto.h
//  fakephoto
//
//  Created by KeYong Yu on 29/7/24.
//

#import <Foundation/Foundation.h>
//#include <string>
//! Project version number for fakephoto.
//FOUNDATION_EXPORT double fakephotoVersionNumber;

//! Project version string for fakephoto.
FOUNDATION_EXPORT const unsigned char fakephotoVersionString[];

//FOUNDATION_EXPORT std::string isFakePhoto(const std::string& strPBFile, const std::string& strPhotoFile );
FOUNDATION_EXPORT NSString* isFakePhoto(NSString* strPBFile, NSString* strPhotoFilex);

// In this header, you should import all the public headers of your framework using statements like #import <fakephoto/PublicHeader.h>


