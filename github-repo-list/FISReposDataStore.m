//
//  FISReposDataStore.m
//  github-repo-list
//
//  Created by Tom OMalley on 7/6/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import "FISReposDataStore.h"
#import "FISGithubAPIClient.h"
#import "FISGithubRepository.h"


@implementation FISReposDataStore

+ (instancetype)sharedDataStore {
    static FISReposDataStore *_sharedDataStore = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedDataStore = [[FISReposDataStore alloc] init];
    });
    
    return _sharedDataStore;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        _repositories=[NSMutableArray new];
    }
    return self;
}

-(void)populateRepoStoreWithCompletion:(void (^)(BOOL))block 
{
    FISGithubAPIClient *APIClient = [[FISGithubAPIClient alloc] init];
    [APIClient getRepositoriesWithCompletion:^(NSArray *repositories) {
        [self.repositories removeAllObjects];
        
        [repositories enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
            FISGithubRepository *repoDictionary = [[FISGithubRepository alloc] initWithDictionary:obj];
            [self.repositories addObject:repoDictionary];
        }];
        
            //I don't get this part.
        block(YES);
        
    }];
    
}


@end
