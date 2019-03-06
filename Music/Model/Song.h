//
//  Song.h
//  Music
//
//  Created by Lotanna Igwe-Odunze on 3/6/19.
//  Copyright © 2019 Lotanna Igwe-Odunze. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Song : NSObject

-(instancetype) initWithTitle: (NSString *)title artist:(NSString *)artist lyrics:(NSString *)lyrics rating:(NSInteger)rating;

-(instancetype) initWithDictionary: (NSDictionary *)dictionary;

@property NSString *title;
@property NSString *artist;
@property NSString *lyrics;
@property NSInteger rating;

@end

NS_ASSUME_NONNULL_END
