//
//  SongViewController.h
//  Music
//
//  Created by Lotanna Igwe-Odunze on 3/6/19.
//  Copyright © 2019 Lotanna Igwe-Odunze. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Song.h"
#import "SongController.h"

NS_ASSUME_NONNULL_BEGIN

@interface SongViewController : UIViewController

@property SHSongController *songController;
@property SHSong *song;

-(void) updateViews;

@property (weak, nonatomic) IBOutlet UILabel *ratingLabel;
@property (weak, nonatomic) IBOutlet UITextField *songTitleTextField;
@property (weak, nonatomic) IBOutlet UITextField *artistTextField;
@property (weak, nonatomic) IBOutlet UITextView *songLyricsTextView;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;

- (IBAction)stepper:(UIStepper *)sender;
- (IBAction)searchForLyrics:(id)sender;
- (IBAction)saveSong:(id)sender;

@end

NS_ASSUME_NONNULL_END
