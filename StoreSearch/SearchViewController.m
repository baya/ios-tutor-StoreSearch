//
//  SearchViewController.m
//  StoreSearch
//
//  Created by jiangguimin on 14-6-18.
//  Copyright (c) 2014年 Dalnpo. All rights reserved.
//

#import "SearchViewController.h"

@interface SearchViewController () <UITableViewDataSource, UITableViewDelegate, UISearchBarDelegate>

@property (nonatomic, weak) IBOutlet UISearchBar *searchBar;
@property (nonatomic, weak) IBOutlet UITableView *tableView;

@end

@implementation SearchViewController
{
    NSMutableArray *_searchResults;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.tableView.contentInset = UIEdgeInsetsMake(64, 0, 0, 0);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (_searchResults == nil) {
        return 0;
    } else {
        return [_searchResults count];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"SearchResultCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.textLabel.text = _searchResults[indexPath.row];
    return cell;
}

#pragma mark - UISearchBarDelegate

- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar
{
    
    [searchBar resignFirstResponder];
    _searchResults = [NSMutableArray arrayWithCapacity:10];
    
    for (int i = 0; i < 3; i++) {
        [_searchResults addObject:[NSString stringWithFormat:@"Fake Result %d for '%@'", i, searchBar.text]];
    }

    [self.tableView reloadData];
}

- (UIBarPosition)positionForBar:(id<UIBarPositioning>)bar
{
    return UIBarPositionTopAttached;
}

@end
