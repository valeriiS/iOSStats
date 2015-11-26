//
//  ViewController.m
//  Stats
//
//  Created by Valerii Samoienko on 11/26/15.
//  Copyright © 2015 Valerii Samoienko. All rights reserved.
//

#import "ViewController.h"
#import <UIKit/UIKit.h>


#define kMobliStatsURL [NSURL URLWithString:@"http://mobli.com"]

@interface ViewController ()<UIWebViewDelegate>

@property (nonatomic, strong) IBOutlet UIWebView *webView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.webView.delegate = self;
    [self.webView loadRequest:[NSURLRequest requestWithURL:kMobliStatsURL]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UIWEbViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView {
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(nullable NSError *)error {
    
}

@end
