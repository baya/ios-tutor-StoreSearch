//
//  SearchResult.m
//  StoreSearch
//
//  Created by jiangguimin on 14-6-22.
//  Copyright (c) 2014年 Dalnpo. All rights reserved.
//

#import "SearchResult.h"

@implementation SearchResult

- (NSComparisonResult)compareName:(SearchResult *)other
{
    return [self.name localizedStandardCompare:other.name];
}


- (NSString *)kindForDisplay
{
    if ([self.kind isEqualToString:@"album"]) {
        return @"Album";
    } else if ([self.kind isEqualToString:@"audiobook"]){
        return @"Audio Book";
    } else if ([self.kind isEqualToString:@"book"]){
        return @"Book";
    } else if ([self.kind isEqualToString:@"ebook"]){
        return @"E-Book";
    } else if ([self.kind isEqualToString:@"feature-movie"]){
        return @"Movie";
    } else if ([self.kind isEqualToString:@"music-video"]) {
        return @"Music Video";
    } else if ([self.kind isEqualToString:@"podcast"]) {
        return @"Podcast";
    } else if ([self.kind isEqualToString:@"software"]) {
        return @"APP";
    } else if ([self.kind isEqualToString:@"song"]) {
        return @"Song";
    } else if ([self.kind isEqualToString:@"tv-episode"]){
        return @"TV Episode";
    } else {
        return self.kind;
    }
}


@end

