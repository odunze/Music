//
//  SongImporter.h
//  Music
//
//  Created by Lotanna Igwe-Odunze on 3/6/19.
//  Copyright © 2019 Lotanna Igwe-Odunze. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Song.h"

NS_ASSUME_NONNULL_BEGIN

@interface SongImporter : NSObject

- (instancetype)initFromDictionary:(NSDictionary *)dictionary songTitle:(NSString *)title artistName:(NSString *)artistName lyrics:(NSString *)lyrics rating:(NSInteger)rating;
- (instancetype)initFromPlistDictionary:(NSDictionary *)dictionary;

@property (nonatomic,readonly) NSDictionary *songAsDictionary;

@end

NS_ASSUME_NONNULL_END
