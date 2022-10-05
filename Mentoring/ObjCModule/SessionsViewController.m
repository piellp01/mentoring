#import "SessionsViewController.h"
#import "SessionTableViewCell.h"
#import "Mentoring-Swift.h"

// NB You can't define properties in the implementation
// If you don't want a property to be public you can define it like this with an interface
@interface SessionsViewController()

@property(strong) NSDictionary *programmeBundle;

@end
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
    // https://developer.apple.com/documentation/foundation/bundle
    NSBundle *main = [NSBundle mainBundle];
    NSURL *resourceUrl = [main URLForResource:@"Response" withExtension:@"json"];
    NSData *jsonData = [[NSData alloc] initWithContentsOfURL:resourceUrl];
    NSError *jsonError;
    NSDictionary *data = [NSJSONSerialization JSONObjectWithData:jsonData options:kNilOptions error:&jsonError];
    self.programmeBundle = data;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    UITableViewCell *myTableViewCell = [tableView dequeueReusableCellWithIdentifier:@"SessionTableViewCell"];
    // TODO: Next time we want to populate the table view with the data from the canned response
    myTableViewCell.textLabel.text = @"Hi Pol!";
    return myTableViewCell;
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSArray *programmes = [self.programmeBundle objectForKey:@"programmes"];
    return programmes.count;
}



@end
