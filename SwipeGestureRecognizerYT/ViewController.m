//
//  ViewController.m
//  SwipeGestureRecognizerYT
//
//  Created by Kurup, Vishal on 7/14/13.
//  Copyright (c) 2013 conkave. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize myImageView, image1, image2;

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    //Instantiate our gesture recognizer
    UISwipeGestureRecognizer * rightSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipe:)];
    
    [myImageView addGestureRecognizer:rightSwipe];
    
    
    UISwipeGestureRecognizer * leftSwipe = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(didSwipe:)];
    
    
    leftSwipe.direction = UISwipeGestureRecognizerDirectionLeft;
    
    [myImageView addGestureRecognizer:leftSwipe];
    
    
    //Set up our image
    image1 = [UIImage imageNamed:@"mona-lisa.jpg"];
    image2 = [UIImage imageNamed:@"girl-earring.jpg"];
    
    myImageView.image = image1;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)didSwipe: (UISwipeGestureRecognizer *) sender
{
    UISwipeGestureRecognizerDirection direction = sender.direction;
    
    switch (direction)
    {
        case UISwipeGestureRecognizerDirectionRight:
            myImageView.image = image2;
            break;
            
        case UISwipeGestureRecognizerDirectionLeft:
            myImageView.image = image1;
            break;
            
        default:
            break;
    }
}

@end
