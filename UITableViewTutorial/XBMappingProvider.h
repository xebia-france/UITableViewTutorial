//
// Created by Alexis Kinsella on 30/04/13.
// Copyright (c) 2013 Xebia. All rights reserved.
//
// To change the template use AppCode | Preferences | File Templates.
//



#import "DCParserConfiguration.h"

@protocol XBMappingProvider <NSObject>

@required

+(DCParserConfiguration *)mappings;

@end