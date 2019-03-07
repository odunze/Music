//
//  SongImporter.m
//  Music
//
//  Created by Lotanna Igwe-Odunze on 3/6/19.
//  Copyright © 2019 Lotanna Igwe-Odunze. All rights reserved.
//

#import "SongImporter.h"

@implementation SongImporter

- (instancetype)initFromDictionary:(NSDictionary *)dictionary songTitle:(NSString *)title artistName:(NSString *)artistName lyrics:(nonnull NSString *)lyrics rating:(NSInteger)rating
{
    return [[Song alloc] initWithTitle:title artist:artistName lyrics:lyrics rating:rating];
}

- (instancetype)initFromPlistDictionary:(NSDictionary *)dictionary
{
    NSString *title = dictionary[@"title"];
    NSString *artistName = dictionary[@"artistName"];
    NSString *lyrics = dictionary[@"lyrics"];
    NSString *ratingString = dictionary[@"rating"];
    NSInteger rating = [ratingString integerValue];
    return [[Song alloc] initWithTitle:title artist:artistName lyrics:lyrics rating:rating];
}

- (NSDictionary *)songAsDictionary
{
    return [[NSDictionary alloc] initWithObjectsAndKeys:@[self.title, @"title", self.artist, @"artistName", self.lyrics, @"lyrics", [NSString stringWithFormat:@"%ld", (long)self.rating], @"rating"], nil];
}

@end
