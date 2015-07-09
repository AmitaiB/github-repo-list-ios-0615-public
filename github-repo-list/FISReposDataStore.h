//
//  FISReposDataStore.h
//  github-repo-list
//
//  Created by Tom OMalley on 7/6/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//
/**
3) Add a method to FISGithubDataStore that uses FISGithubAPIClient
 to fill the repositories property with FISGithubRepository objects. 
 In the completionBlock just pass back a BOOL success variable.
*/

#import <Foundation/Foundation.h>

@interface FISReposDataStore : NSObject

@property (strong, nonatomic) NSMutableArray *repositories;

- (void)populateRepoStoreWithCompletion:(void (^)(BOOL))block;

@end
