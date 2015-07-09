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
    
#warning Make sure you've entered client_id and key
    NSString const *client_id = @"0c71979919867891f359"; //CLIENT_ID;
    NSString const *client_secret = @"29ae7cdd8487829575b8c9b4d67b01f36126ee8c"; // CLIENT_SECRET;
    
    
    NSString *urlString = [NSString stringWithFormat:@"https://api.github.com/repositories?client_id=%@&client_secret%@", client_id, client_secret];
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSLog(@"before the dataTaskWithURL call");
    NSURLSessionDataTask *task = [urlSession dataTaskWithURL:url
                                           completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) 
    {
        NSArray *repositories = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSLog(@"In FISGithubAPIClient's task's completion block. Response: %@", repositories);
        
//        Lecture code adds this line, but I don't know why...
        completionBlock(repositories);
                                              
                                           }];
    NSLog(@"After the dataTaskWithURL call");
    

//    [task resume];                         


}


@end
