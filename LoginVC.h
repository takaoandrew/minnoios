 //
//  LoginVC.h
//  TestApp
//
//  Created by Andrew Takao on 4/30/17.
//  Copyright © 2017 Andrew Takao. All rights reserved.
//
//
//#ifndef LoginVC_h
//#define LoginVC_h


//#endif /* LoginVC_h */

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController

@property NSDictionary* viewNames;

@property UITextField* emailField;
@property UITextField* passwordField;
@property UIButton* contactButton;
@property UIButton* echoButton;
@property UIImageView* imageView;
@property UILabel* nameView;
@property UILabel* connectNumberView;
@property UILabel* friendNumberView;
@property UILabel* connectView;
@property UILabel* friendView;

@end
