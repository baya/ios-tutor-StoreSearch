//
//  SearchResultCell.h
//  StoreSearch
//
//  Created by jiangguimin on 14-6-22.
//  Copyright (c) 2014年 Dalnpo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AFNetworking/UIImageView+AFNetworking.h>
@class SearchResult;

@interface SearchResultCell : UITableViewCell

@property (nonatomic, weak) IBOutlet UILabel *nameLabel;
@property (nonatomic, weak) IBOutlet UILabel *artistNameLabel;
@property (nonatomic, weak) IBOutlet UIImageView *artworkImageView;

- (void)configureForSearchResult:(SearchResult *)searchResult;

@end
