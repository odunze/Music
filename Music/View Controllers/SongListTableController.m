//
//  SongListTableViewController.m
//  Music
//
//  Created by Lotanna Igwe-Odunze on 3/6/19.
//  Copyright © 2019 Lotanna Igwe-Odunze. All rights reserved.
//

#import "SongListTableController.h"
#import "SongController.h"
#import "Song.h"
#import "SongViewController.h"

@interface SongListTableController ()

@property (nonatomic) SongController *songController;

@end

@implementation SongListController

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        _songController = [[SHSongController alloc] init];
    }
    return self;
}

- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        _songController = [[SHSongController alloc] init];
    }
    return self;
}

- (void)viewWillAppear:(BOOL)animated
{
    self.tableView.rowHeight = 70;
    [self.tableView reloadData];
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.songController.songs.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SHSongTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SongCell" forIndexPath:indexPath];
    
    SHSong *song = [self.songController.songs objectAtIndex:[indexPath row]];
    
    cell.songTitleLabel.text = song.title;
    cell.artistNameLabel.text = [song.artist uppercaseString];
    
    return cell;
}

#pragma mark - Navigation

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"ViewSong"]) {
        SHSongDetailsViewController *destinationVC = (SHSongDetailsViewController *)[segue destinationViewController];
        
        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
        SHSong *song = [self.songController.songs objectAtIndex:[indexPath row]];
        [destinationVC setSong:song];
        [destinationVC setSongController:self.songController];
    } else if ([segue.identifier isEqualToString:@"AddSong"]) {
        SHSongDetailsViewController *destinationVC = (SHSongDetailsViewController *)[segue destinationViewController];
        
        [destinationVC setSongController:self.songController];
    }
}

@end
