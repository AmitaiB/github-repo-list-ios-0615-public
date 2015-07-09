//
//  FISReposTableViewController.m
//  
//
//  Created by Joe Burgess on 5/5/14.
//
//

#import "FISReposTableViewController.h"
#import "FISGithubAPIClient.h"
#import "FISGithubRepository.h"
#import "FISReposDataStore.h"
/**
 To get a list of all repositories just do the following request:
 
 GET https://api.github.com/repositories?client_id=YOUR_KEY&client_secret=YOUR_SECRET
*/
#pragma mark - Lab Instructions
/** Lab instructions:
DONE 1) In the FISGithubAPIClient create a method that retreives a list of all of the repositories, and passes the NSArray of NSDictionaries to a completionBlock. Do this with NSURLSession, not AFNetworking.
DONE 2) Create a new method in FISGithubRepository that will take the NSDictionary representation of the repository and returns a new instance of FISGithubRepository all filled out.
 3) Add a method to FISGithubDataStore that uses FISGithubAPIClient to fill the repositories property with FISGithubRepository objects. In the completionBlock just pass back a BOOL success variable.
 4) In your FISReposTableViewController on viewDidLoad retreive the repos from the FISGithubDataStore and display them!
 */
@interface FISReposTableViewController ()
@end

@implementation FISReposTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.tableView.accessibilityIdentifier = @"Repo Table View";
    self.tableView.accessibilityLabel=@"Repo Table View";
    
        // FISGithubAPIClient *apiClient
    [[FISReposDataStore]
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
    // Return the number of rows in the section.
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"basicCell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

@end
