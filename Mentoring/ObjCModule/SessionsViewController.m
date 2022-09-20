#import "SessionsViewController.h"
#import "SessionTableViewCell.h"

@implementation SessionsViewController

- (void)viewDidLoad
{
    UITableView *tableView = [[UITableView alloc] init];
    tableView.delegate = self;
    tableView.dataSource = self;
    [[self view] addSubview:tableView];
    // this is telling the compiler you are not using ye olde Masks and are actually going to use constraints
    tableView.translatesAutoresizingMaskIntoConstraints = false;
    [NSLayoutConstraint activateConstraints: @[
        [tableView.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor],
        [tableView.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor],
        [tableView.topAnchor constraintEqualToAnchor:self.view.topAnchor],
        [tableView.bottomAnchor constraintEqualToAnchor:self.view.bottomAnchor]
    ]];
    [tableView registerClass:[SessionTableViewCell class]
      forCellReuseIdentifier: @"SessionTableViewCell"];
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *myTableViewCell = [tableView dequeueReusableCellWithIdentifier:@"SessionTableViewCell"];
    myTableViewCell.textLabel.text = @"Hi Pol!";
    return myTableViewCell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}



@end
