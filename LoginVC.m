//
//  LoginVC.m
//  TestApp
//
//  Created by Andrew Takao on 4/30/17.
//  Copyright © 2017 Andrew Takao. All rights reserved.
//

//#import <Foundation/Foundation.h>
#import "LoginVC.h"

@implementation LoginViewController

-(void)loginPressed
{
    NSLog(@"Login was pressed!");
}


-(void)addLayout:(NSString*)format
{
    NSArray* constraints = [
                            NSLayoutConstraint
                            constraintsWithVisualFormat: format
                            options: 0
                            metrics: nil
                            views: self.viewNames
                            ];
    
    [self.view addConstraints:constraints];
}

-(void)loadView
{
    self.view = [
                 [UIView alloc]
                 initWithFrame: CGRectMake(0, 0, 0, 0)];
    
    self.view.backgroundColor =
    [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
    
    self.view.translatesAutoresizingMaskIntoConstraints = NO;
    
//    self.emailField = [[UITextField alloc] init];
//    self.passwordField = [[UITextField alloc] init];
    
    
    self.imageView = [[UIImageView alloc] init];
    self.nameView = [[UILabel alloc] init];
    self.connectView = [[UILabel alloc] init];
    self.connectNumberView = [[UILabel alloc] init];
    self.friendView = [[UILabel alloc] init];
    self.friendNumberView = [[UILabel alloc] init];
    
    self.contactButton = [[UIButton alloc] init];
    self.echoButton = [[UIButton alloc] init];
    
//    [self.view addSubview:self.emailField];
//    [self.view addSubview:self.passwordField];
    
    [self.view addSubview:self.contactButton];
    [self.view addSubview:self.echoButton];
    
    [self.view addSubview:self.imageView];
    [self.view addSubview:self.nameView];
    [self.view addSubview:self.connectNumberView];
    [self.view addSubview:self.connectView];
    [self.view addSubview:self.friendNumberView];
    [self.view addSubview:self.friendView];
    
    self.viewNames = @{
                       @"view"     : self.view,
//                       @"email"    : self.emailField,
//                       @"password" : self.passwordField,
                       @"contact"  : self.contactButton,
                       @"echo"     : self.echoButton,
                       
                       @"profile"  : self.imageView,
                       @"connectnum"  : self.connectNumberView,
                       @"connect"  : self.connectView,
                       @"friendnum"  : self.friendNumberView,
                       @"friend"  : self.friendView,
                       @"name"     : self.nameView
                       };
    
//    self.emailField.translatesAutoresizingMaskIntoConstraints = NO;
//    self.passwordField.translatesAutoresizingMaskIntoConstraints = NO;
    
    self.contactButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.echoButton.translatesAutoresizingMaskIntoConstraints = NO;

    self.imageView.translatesAutoresizingMaskIntoConstraints = NO;
    self.nameView.translatesAutoresizingMaskIntoConstraints = NO;
    self.connectView.translatesAutoresizingMaskIntoConstraints = NO;
    self.connectNumberView.translatesAutoresizingMaskIntoConstraints = NO;
    self.friendView.translatesAutoresizingMaskIntoConstraints = NO;
    self.friendNumberView.translatesAutoresizingMaskIntoConstraints = NO;

    
//    self.passwordField.secureTextEntry = YES;
    //No need to hide email
//    self.emailField.secureTextEntry = YES;
    
//    self.emailField.borderStyle = UITextBorderStyleRoundedRect;
//    self.passwordField.borderStyle = UITextBorderStyleRoundedRect;
    
    self.imageView.image = [UIImage imageNamed:@"profile3.jpg"];
    self.nameView.text = @"Andrew Takao";
    self.connectNumberView.text = @"20";
    self.connectView.text = @"Connects";
    self.friendNumberView.text = @"10";
    self.friendView.text = @"Friends";
    
    //These seemed to be reversed before
//    self.passwordField.placeholder = @"Password";
//    self.emailField.placeholder = @"Email";
    
    //I want both to have the underline, can't see what distinguishes the two, but only password has the underline
    
    [self.contactButton
     setTitle: @"Contact"
     forState: UIControlStateNormal];
    
    [self.contactButton
     setTitleColor: self.view.tintColor
     forState: UIControlStateNormal];
    
    [self.contactButton
     addTarget: self
     action: @selector(loginPressed)
     forControlEvents: UIControlEventTouchUpInside];
    
    [self.echoButton
     setTitle: @"Echo"
     forState: UIControlStateNormal];
    
    [self.echoButton
     setTitleColor: self.view.tintColor
     forState: UIControlStateNormal];
    
    [self.echoButton
     addTarget: self
     action: @selector(loginPressed)
     forControlEvents: UIControlEventTouchUpInside];
    
    // Set the width of the email field
    
    //changed these to be centered
    
//    [self addLayout:@"[email(==100)]"];
//    [self addLayout:@"|-50-[email]-50-|"];
    
    // Set a 10 unit left margin and 20 unit right margin
//    [self addLayout:@"|-50-[password]-50-|"];
    
    // Putt a single '-' instead of a length provides a system defined "small
    // space"
    
    
    [self addLayout:@"|-30-[profile]-|"];
    
    // Set up some vertical layout. Note the missing | at the end. We should
    // talk about that.
    [self addLayout:@"V:|-40-[profile]"];
    
    //
    // The ASCII visual layout language doesn't support centering views. The
    // following line sets up a centering constraint for emailField:
    //
    // emailField.centerX = 1 * view.centerX + 0
    //
    // Or in other words just
    //
    // emailField.centerX = view.centerX
    //
    
    
    //Echo Button
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.echoButton
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .5
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.echoButton
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: 1.2
                              constant: 50
                              ]];
    //Contact Button
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.contactButton
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .5
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.contactButton
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: .6
                              constant: 0
                              ]];
    //Name
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.nameView
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .15
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.nameView
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: 1.2
                              constant: 0
                              ]];
    //ConnectNum
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.connectNumberView
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .3
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.connectNumberView
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: .9
                              constant: 0
                              ]];
    //Connect
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.connectView
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .35
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.connectView
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: .9
                              constant: 0
                              ]];
    //Friendnum
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.friendNumberView
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .3
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.friendNumberView
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: 1.5
                              constant: 0
                              ]];
    //Friend
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.friendView
                              attribute: NSLayoutAttributeCenterY
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterY
                              multiplier: .35
                              constant: 0
                              ]];
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.friendView
                              attribute: NSLayoutAttributeCenterX
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeCenterX
                              multiplier: 1.5
                              constant: 0
                              ]];
    
    //Picture
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.imageView
                              attribute: NSLayoutAttributeWidth
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeWidth
                              multiplier: .2
                              constant: 0
                              ]];
    
    [self.view addConstraint:[
                              NSLayoutConstraint
                              constraintWithItem: self.imageView
                              attribute: NSLayoutAttributeHeight
                              relatedBy: NSLayoutRelationEqual
                              toItem: self.view
                              attribute: NSLayoutAttributeHeight
                              multiplier: .15
                              constant: 0
                              ]];


    //
    // Note that all of the visual layout stuff like "|-10-[password]-20-|"
    // can ultimately be created by calling this longer function manually. For
    // example, we could use this long form to set up constraints like
    //
    // password.left = 1 * view.left + 10
    // password.right = 1 * view.right + 20
    //
    // where "left" and "right" refer to the left and right borders of things.
    //
    // This would look something like this:
    //
    // [self.view addConstraint:[
    //     NSLayoutConstraint
    //     constraintWithItem: self.passwordField
    //     attribute: NSLayoutAttributeLeft
    //     relatedBy: NSLayoutRelationEqual
    //     toItem: self.view
    //     attribute: NSLayoutAttributeLeft
    //     multiplier: 1
    //     constant: 10
    // ]];
    // 
    // [self.view addConstraint:[
    //     NSLayoutConstraint
    //     constraintWithItem: self.passwordField
    //     attribute: NSLayoutAttributeRight
    //     relatedBy: NSLayoutRelationEqual
    //     toItem: self.view
    //     attribute: NSLayoutAttributeRight
    //     multiplier: 1
    //     constant: 20
    // ]];
    // 
}

-(void)viewDidLoad
{
    NSLog(@"The view loaded!");
}

@end
