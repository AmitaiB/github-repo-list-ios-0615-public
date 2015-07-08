//
//  FISGithubRepository.m
//  ReviewSession 3-16-14
//
//  Created by Joe Burgess on 3/16/14.
//  Copyright (c) 2014 Joe Burgess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FISGithubRepository.h"

@implementation FISGithubRepository

-(instancetype)initWithDictionary:(NSDictionary *)dictionary
{
    if (!self) {
        return nil;
    }
    
    _fullName = dictionary[@"full_name"];
    _repositoryID = dictionary[@"id"];
    
    NSString *urlString = dictionary[@"html_url"];
    _htmlURL = [NSURL URLWithString:urlString];
    
    return self;
}

-(BOOL)isEqual:(FISGithubRepository*)object
{    
    if([object isKindOfClass:self.class]) return NO;

    FISGithubRepository *otherRepo = object;
    
    return [self.repositoryID isEqual:object.repositoryID];
}

@end
