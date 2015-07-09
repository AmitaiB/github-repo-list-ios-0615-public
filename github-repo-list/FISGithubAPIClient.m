//
//  FISGithubAPIClient.m
//  github-repo-list
//
//  Created by Tom OMalley on 7/6/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import "FISGithubAPIClient.h"

@implementation FISGithubAPIClient

- (void)getRepositoriesWithCompletion:(void (^)(NSArray *repositories))completionBlock
{
    NSURLSession *urlSession = [NSURLSession sharedSession];
    
#warning Need client_id and key
    NSString *client_id = @"";
    NSString *client_secret = @"";
    
    NSString *url = [NSString stringWithFormat:@"https://api.github.com/repositories?client_id=%@&client_secret%@", client_id, client_secret]; //need client
    
    
    NSURLSessionDataTask *task = [urlSession dataTaskWithURL:url completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        completionBlock//???
    }]
}


@end
