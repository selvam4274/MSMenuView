//
// MSMenuView.m
// MSMenuView
//
// Copyright (c) 2013 Selvam Manickam (https://github.com/selvam4274)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.
//

#import "MSMenuView.h"

@implementation MSMenuView
@synthesize  PlaylistBtn,ArtistBtn,AlbumBtn,AllSongsBtn,MoreBtn,delegate;


- (id)initWithFrame:(CGRect)frame
{
    CGRect frame1=CGRectMake(frame.origin.x, frame.origin.y, 320, 165);
    
    self = [super initWithFrame:frame1];
    if (self) {
        
        [self setBackgroundColor:[UIColor whiteColor]];
        
        PlaylistBtn=[UIButton buttonWithType:UIButtonTypeCustom];
        [PlaylistBtn setFrame:CGRectMake(3, 7, 60, 71)];
        [PlaylistBtn setSelected:YES];
        [PlaylistBtn setTag:1];
        [PlaylistBtn.titleLabel setFont:[UIFont systemFontOfSize:12]];
        [PlaylistBtn setContentVerticalAlignment:UIControlContentVerticalAlignmentTop];
        PlaylistBtn.contentEdgeInsets = UIEdgeInsetsMake(4, 0, 0, 0);
        [PlaylistBtn setBackgroundImage:[UIImage imageNamed:@"TabBarBG.png"] forState:UIControlStateNormal];
        [PlaylistBtn setBackgroundImage:[UIImage imageNamed:@"TabBarBG.png"] forState:UIControlStateSelected];
        [PlaylistBtn setTitle:@"Playlist" forState:UIControlStateNormal];
        [PlaylistBtn addTarget:self action:@selector(buttonClickAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:PlaylistBtn];
        
        ArtistBtn=[UIButton buttonWithType:UIButtonTypeCustom];
        [ArtistBtn setFrame:CGRectMake(66, 27, 60, 71)];
        [ArtistBtn setTag:2];
        [ArtistBtn.titleLabel setFont:[UIFont systemFontOfSize:12]];
        [ArtistBtn setContentVerticalAlignment:UIControlContentVerticalAlignmentTop];
        ArtistBtn.contentEdgeInsets = UIEdgeInsetsMake(4, 0, 0, 0);
        [ArtistBtn setBackgroundImage:[UIImage imageNamed:@"TabBarBG.png"] forState:UIControlStateNormal];
        [ArtistBtn setBackgroundImage:[UIImage imageNamed:@"TabBarBG.png"] forState:UIControlStateSelected];
        [ArtistBtn setTitle:@"Artist" forState:UIControlStateNormal];
        [ArtistBtn addTarget:self action:@selector(buttonClickAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:ArtistBtn];

        AlbumBtn=[UIButton buttonWithType:UIButtonTypeCustom];
        [AlbumBtn setFrame:CGRectMake(130, 27, 60, 71)];
        [AlbumBtn setTag:3];
        [AlbumBtn.titleLabel setFont:[UIFont systemFontOfSize:12]];
        [AlbumBtn setContentVerticalAlignment:UIControlContentVerticalAlignmentTop];
        AlbumBtn.contentEdgeInsets = UIEdgeInsetsMake(4, 0, 0, 0);
        [AlbumBtn setBackgroundImage:[UIImage imageNamed:@"TabBarBG.png"] forState:UIControlStateNormal];
        [AlbumBtn setBackgroundImage:[UIImage imageNamed:@"TabBarBG.png"] forState:UIControlStateSelected];
        [AlbumBtn setTitle:@"Album" forState:UIControlStateNormal];
        [AlbumBtn addTarget:self action:@selector(buttonClickAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:AlbumBtn];

        AllSongsBtn=[UIButton buttonWithType:UIButtonTypeCustom];
        [AllSongsBtn setFrame:CGRectMake(193, 27, 60, 71)];
        [AllSongsBtn setTag:4];
        [AllSongsBtn.titleLabel setFont:[UIFont systemFontOfSize:12]];
        [AllSongsBtn setContentVerticalAlignment:UIControlContentVerticalAlignmentTop];
        AllSongsBtn.contentEdgeInsets = UIEdgeInsetsMake(4, 0, 0, 0);
        [AllSongsBtn setBackgroundImage:[UIImage imageNamed:@"TabBarBG.png"] forState:UIControlStateNormal];
        [AllSongsBtn setBackgroundImage:[UIImage imageNamed:@"TabBarBG.png"] forState:UIControlStateSelected];
        [AllSongsBtn setTitle:@"AllSongs" forState:UIControlStateNormal];
        [AllSongsBtn addTarget:self action:@selector(buttonClickAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:AllSongsBtn];

        
        MoreBtn=[UIButton buttonWithType:UIButtonTypeCustom];
        [MoreBtn setFrame:CGRectMake(256, 27, 60, 71)];
        [MoreBtn setTag:5];
        [MoreBtn.titleLabel setFont:[UIFont systemFontOfSize:12]];
        [MoreBtn setContentVerticalAlignment:UIControlContentVerticalAlignmentTop];
         MoreBtn.contentEdgeInsets = UIEdgeInsetsMake(4, 0, 0, 0);
        [MoreBtn setBackgroundImage:[UIImage imageNamed:@"TabBarBG.png"] forState:UIControlStateNormal];
        [MoreBtn setBackgroundImage:[UIImage imageNamed:@"TabBarBG.png"] forState:UIControlStateSelected];
        [MoreBtn setTitle:@"More" forState:UIControlStateNormal];
        [MoreBtn addTarget:self action:@selector(buttonClickAction:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:MoreBtn];
        
        
        
        
    }
    
  
    return self;
    
    
}
//Need to add tag
-(void)checkSelectedBtn:(UIButton *)sender{
    int buttonTag=sender.tag;
    
    if (PlaylistBtn.selected && PlaylistBtn.tag!=buttonTag) {
        CGRect TempFrame=PlaylistBtn.frame;
        [UIView animateWithDuration:0.3 animations:^{
        [PlaylistBtn setFrame:CGRectMake(TempFrame.origin.x, TempFrame.origin.y+20, TempFrame.size.width, TempFrame.size.height)];
         }completion:^(BOOL finished) {
            
        }];
        PlaylistBtn.selected=NO;
            
        
    }
    else if (ArtistBtn.selected && ArtistBtn.tag!=buttonTag) {
        CGRect TempFrame=ArtistBtn.frame;
         [UIView animateWithDuration:0.3 animations:^{
        [ArtistBtn setFrame:CGRectMake(TempFrame.origin.x, TempFrame.origin.y+20, TempFrame.size.width, TempFrame.size.height)];
         }completion:^(BOOL finished) {
             
         }];
        ArtistBtn.selected=NO;
    }
   else if (AlbumBtn.selected && AlbumBtn.tag!=buttonTag) {
       CGRect TempFrame=AlbumBtn.frame;
       [UIView animateWithDuration:0.3 animations:^{
       [AlbumBtn setFrame:CGRectMake(TempFrame.origin.x, TempFrame.origin.y+20, TempFrame.size.width, TempFrame.size.height)];
       }completion:^(BOOL finished) {
           
       }];
       AlbumBtn.selected=NO;
    }
   else if (AllSongsBtn.selected && AllSongsBtn.tag!=buttonTag) {
       CGRect TempFrame=AllSongsBtn.frame;
       [UIView animateWithDuration:0.3 animations:^{
       [AllSongsBtn setFrame:CGRectMake(TempFrame.origin.x, TempFrame.origin.y+20, TempFrame.size.width, TempFrame.size.height)];
       }completion:^(BOOL finished) {
           
       }];
       AllSongsBtn.selected=NO;
   }
   else if (MoreBtn.selected &&MoreBtn.tag!=buttonTag) {
       CGRect TempFrame=MoreBtn.frame;
        [UIView animateWithDuration:0.3 animations:^{
       [MoreBtn setFrame:CGRectMake(TempFrame.origin.x, TempFrame.origin.y+20, TempFrame.size.width, TempFrame.size.height)];
        }completion:^(BOOL finished) {
            
        }];
       MoreBtn.selected=NO;
   }

}
-(void)callButtonAction:(UIButton *)sender{
    int value=sender.tag;
    if (value==1) {
        [self.delegate PlaylistBtnClick];
    }
    if (value==2) {
        [self.delegate ArtistBtnClick];
      }
    if (value==3) {
        [self.delegate AlbumBtnClick];
    }
    if (value==4) {
        [self.delegate AllSongsBtnClick];
    }
    if (value==5) {
        [self.delegate MoreBtnClick];
     }
}

-(void)buttonClickAction:(id)sender{
        UIButton *btn=(UIButton *)sender;
        CGRect rec=btn.frame;
        if (!btn.selected) {
           [UIView animateWithDuration:0.3 animations:^{
                [btn setFrame:CGRectMake(rec.origin.x, rec.origin.y-20, rec.size.width, rec.size.height)];
           } completion:^(BOOL finished) {
               
    
            }];
            btn.selected=YES;
            [self checkSelectedBtn:btn];
            [self  callButtonAction:btn];
       }

}
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
