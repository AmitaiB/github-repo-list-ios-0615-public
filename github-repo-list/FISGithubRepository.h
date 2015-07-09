//
//  FISGithubRepository.h
//  ReviewSession 3-16-14
//
//  Created by Joe Burgess on 3/16/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISGithubRepository : NSObject

@property (nonatomic, strong) NSString *fullName;
@property (nonatomic, strong) NSURL *htmlURL;
#warning repoID might be an integer.
@property (nonatomic, strong) NSString *repositoryID;

/**
 *  Will take the NSDictionary representation of the repository and returns a new instance of FISGithubRepository all filled out.
 *
 *  @param repoInDictionaryFormat dictionary rep of repo.
 *
 *  @return new instance of FISGitHubRepository
 */
- (FISGithubRepository *)initWithDictionary:(NSDictionary *)repoInDictionaryFormat;
- (FISGithubRepository *)init;

@end
