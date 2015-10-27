//
//  Song.h
//  ObjCInterop
//
//  Created by BJ Miller on 9/27/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Song : NSObject

@property (nonatomic, copy, nonnull) NSString *title;
@property (nonatomic, copy, nullable) NSString *artist;
@property (nonatomic, strong, null_resettable) NSNumber *rating;

- (instancetype _Nonnull)initWithTitle:(NSString * _Nonnull)title
                                artist:(NSString * _Nullable)artist
                                rating:(NSNumber * _Nullable)rating;

@end
