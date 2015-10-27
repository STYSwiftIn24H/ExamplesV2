//
//  Song.m
//  ObjCInterop
//
//  Created by BJ Miller on 9/27/14.
//  Copyright (c) 2014 Six Five Software, LLC. All rights reserved.
//

#import "Song.h"

@interface Song ()
// this is where the private interface code goes, if any
@end

@implementation Song
- (void)setRating:(NSNumber *)rating {
    _rating = (!rating) ? @0.0 : rating;
}

- (instancetype)initWithTitle:(NSString *)title artist:(NSString *)artist rating:(NSNumber *)rating {
    if (self = [super init]) {
        _title = title;
        _artist = artist;
        _rating = rating;
    }
    return self;
}
@end
