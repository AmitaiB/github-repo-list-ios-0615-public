//
//  FISGithubAPIClient.h
//  github-repo-list
//
//  Created by Tom OMalley on 7/6/15.
//  Copyright (c) 2015 Zachary Drossman. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISGithubAPIClient : NSObject

/**
 *  Create a method that retreives a list of all of the repositories, and passes the NSArray of NSDictionaries to a completionBlock. 
 *
 *  @param I'm not sure of the inputs. Perhaps the API key and client secret?
 *
 *  @return NSArray OF DICTIONARIES (of Repos, from Github's JSON response).
 */

    //void because it is asynchronous, and you cannot presume it will give you data reliably
- (void)getRepositoriesWithCompletion:(void (^)(NSArray *repositories))completionBlock;



@end
