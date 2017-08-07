//
//  ViewController.m
//  CoustomBar
//
//  Created by Selvam M on 07/08/13.
//  Copyright (c) 2013 . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    MSMenuView *menu=[[MSMenuView alloc]initWithFrame:CGRectMake(0, self.view.frame.size.height+55, 0, 0)];
    [menu setDelegate:self];
   // [menu setBackgroundColor:[UIColor whiteColor]];
    [self.view addSubview:menu];
    
    
    //[BarView setBackgroundColor:[UIColor whiteColor]];
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}
-(void)PlaylistBtnClick{
   BarView.text=@"Playlist";
}
-(void)ArtistBtnClick{
    BarView.text=@"Artist";
}
-(void)AlbumBtnClick{
    BarView.text=@"Album";
}
-(void)AllSongsBtnClick{
    BarView.text=@"All Songs";
}
-(void)MoreBtnClick{
    BarView.text=@"More";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
