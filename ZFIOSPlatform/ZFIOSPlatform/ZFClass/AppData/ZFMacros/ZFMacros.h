//
//  ZFMacros.h
//  ZFIOSPlatform
//
//  Created by 张木锋 on 2017/5/16.
//  Copyright © 2017年 COM.ZMF. All rights reserved.
//

#ifndef ZFMacros_h
#define ZFMacros_h


#endif /* ZFMacros_h */


#ifdef DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"\n%s文件中第%d行-->打印信息==>: %s\n",[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String],__LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(...)
#endif
