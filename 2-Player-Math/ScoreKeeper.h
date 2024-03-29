//
//  ScoreKeeper.h
//  Maths-Game
//
//  Created by Cameron Mcleod on 2019-05-28.
//  Copyright © 2019 Cameron Mcleod. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject

@property int right;
@property int wrong;
@property int playerNumber;

-(void)score;

@end

NS_ASSUME_NONNULL_END
