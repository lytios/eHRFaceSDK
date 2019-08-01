//
//  FirstViewController.m
//  ICBCFace
//
//  Created by 吕清毅 on 2018/11/30.
//  Copyright © 2018年 lqy. All rights reserved.
//

#import "FirstViewController.h"
#import <HRFaceSDK/OutsideViewController.h>
#import <AVFoundation/AVFoundation.h>
#import "UIView+Frame.h"
#import "BaseMacro.h"

@interface FirstViewController ()<OutsideViewControllerDelegate>

@property (nonatomic, strong) UITextField *firstTF;
@property (nonatomic, strong) UITextField *secondTF;
@property (nonatomic, strong) UITextField *thirdTF;
@property (nonatomic, strong) UITextField *fourthTF;
@property (nonatomic, strong) UITextField *fivTF;
@property (nonatomic, strong) UITextField *sixTF;
@property (nonatomic, strong) UITextField *sevenTF;
@property (nonatomic, strong) UITextField *eightTF;
@property (nonatomic, strong) UITextField *ninTF;
@property (nonatomic, strong) UITextField *tenTF;
@property (nonatomic, strong) UITextField *elevenTF;
@property (nonatomic, strong) UITextField *twelveTF;
@property (nonatomic, strong) NSString *baseUrl;
@property (nonatomic, strong)void(^faceSignResult)(NSString*string);//面签是否成功
@end

@implementation FirstViewController

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBar.hidden = YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self setMainView];
}

- (void)setMainView
{
    UIView *mainView = [UIView new];
    mainView.frame = CGRectMake(0, 30, SCREENWIDTH, 500);
    mainView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:mainView];
    
    //bankCode assuerNo orderNo
    UITextField *moneyTF = [UITextField new];
    moneyTF.frame = CGRectMake(20, 0, SCREENWIDTH-40, 30);
    // moneyTF.keyboardType = UIKeyboardTypeDecimalPad;
    moneyTF.placeholder = @"请输入bankCode";
    moneyTF.text = @"insert127";
    [moneyTF setValue:RGBACOLOR(145, 145, 145, 1) forKeyPath:@"_placeholderLabel.textColor"];
    [moneyTF setValue:iphone5x_4_0?FontWithSize(14):FontWithSize(16) forKeyPath:@"_placeholderLabel.font"];
    moneyTF.textColor = UIColorFromHex(0x666666);
    moneyTF.font =iphone5x_4_0?FontWithSize(14): FontWithSize(16);
    self.firstTF = moneyTF;
    [mainView addSubview:moneyTF];
    
    UIView *lineV = [UIView new];
    lineV.frame = CGRectMake(0, 34, SCREENWIDTH, 1);
    lineV.backgroundColor = UIColorFromHex(0xEFEFEF);
    [mainView addSubview:lineV];
    
    UITextField *secondTF = [UITextField new];
    secondTF.frame = CGRectMake(20, 35, SCREENWIDTH-100, 30);
    //secondTF.keyboardType = UIKeyboardTypeDecimalPad;
    secondTF.placeholder = @"请输入assuerNo";
    secondTF.text = @"D20103300";
    [secondTF setValue:RGBACOLOR(145, 145, 145, 1) forKeyPath:@"_placeholderLabel.textColor"];
    [secondTF setValue:iphone5x_4_0?FontWithSize(14):FontWithSize(16) forKeyPath:@"_placeholderLabel.font"];
    secondTF.textColor = UIColorFromHex(0x666666);
    secondTF.font =iphone5x_4_0?FontWithSize(14): FontWithSize(16);
    self.secondTF = secondTF;
    [mainView addSubview:secondTF];
    
    UIView *lineV2 = [UIView new];
    lineV2.frame = CGRectMake(0, 69, SCREENWIDTH, 1);
    lineV2.backgroundColor = UIColorFromHex(0xEFEFEF);
    [mainView addSubview:lineV2];
    
    UITextField *thirdTF = [UITextField new];
    thirdTF.frame = CGRectMake(20, 70, SCREENWIDTH-100, 30);
    // thirdTF.keyboardType = UIKeyboardTypeDecimalPad;
    thirdTF.placeholder = @"请输入orderNo(选填db)";
    //thirdTF.text = @"BPA2091904000769";
    [thirdTF setValue:RGBACOLOR(145, 145, 145, 1) forKeyPath:@"_placeholderLabel.textColor"];
    [thirdTF setValue:iphone5x_4_0?FontWithSize(14):FontWithSize(16) forKeyPath:@"_placeholderLabel.font"];
    thirdTF.textColor = UIColorFromHex(0x666666);
    thirdTF.font =iphone5x_4_0?FontWithSize(14): FontWithSize(16);
    self.thirdTF = thirdTF;
    [mainView addSubview:thirdTF];
    
    UIView *lineV3 = [UIView new];
    lineV3.frame = CGRectMake(0, 104, SCREENWIDTH, 1);
    lineV3.backgroundColor = UIColorFromHex(0xEFEFEF);
    [mainView addSubview:lineV3];
    
    UITextField *foutthTF = [UITextField new];
    foutthTF.frame = CGRectMake(20, 105, SCREENWIDTH-20, 30);
    //foutthTF.keyboardType = UIKeyboardTypeDecimalPad;
    foutthTF.placeholder = @"请输入regfrom";
    foutthTF.text = @"测试银行";
    [foutthTF setValue:RGBACOLOR(145, 145, 145, 1) forKeyPath:@"_placeholderLabel.textColor"];
    [foutthTF setValue:iphone5x_4_0?FontWithSize(14):FontWithSize(16) forKeyPath:@"_placeholderLabel.font"];
    foutthTF.textColor = UIColorFromHex(0x666666);
    foutthTF.font =iphone5x_4_0?FontWithSize(14): FontWithSize(16);
    self.fourthTF = foutthTF;
    [mainView addSubview:foutthTF];
    
    UIView *lineV4 = [UIView new];
    lineV4.frame = CGRectMake(0, 134, SCREENWIDTH, 1);
    lineV4.backgroundColor = UIColorFromHex(0xEFEFEF);
    [mainView addSubview:lineV4];
    
    UITextField *fifTh = [UITextField new];
    fifTh.frame = CGRectMake(20, 140, SCREENWIDTH-20, 30);
    //foutthTF.keyboardType = UIKeyboardTypeDecimalPad;
    fifTh.placeholder = @"请输入业务类型";//业务类型：1-新车贷；2-二手车贷；3-新能源车贷；4-装修贷；5-车位贷
    fifTh.text = @"1";
    [fifTh setValue:RGBACOLOR(145, 145, 145, 1) forKeyPath:@"_placeholderLabel.textColor"];
    [fifTh setValue:iphone5x_4_0?FontWithSize(14):FontWithSize(16) forKeyPath:@"_placeholderLabel.font"];
    fifTh.textColor = UIColorFromHex(0x666666);
    fifTh.font =iphone5x_4_0?FontWithSize(14): FontWithSize(16);
    self.fivTF = fifTh;
    [mainView addSubview:fifTh];
    
    UIView *line5 = [UIView new];
    line5.frame = CGRectMake(0, 169, SCREENWIDTH, 1);
    line5.backgroundColor = UIColorFromHex(0xEFEFEF);
    [mainView addSubview:line5];
    
    UITextField *sixTF = [UITextField new];
    sixTF.frame = CGRectMake(20, 175, SCREENWIDTH-20, 30);
    //foutthTF.keyboardType = UIKeyboardTypeDecimalPad;
    sixTF.placeholder = @"默认是0、主借人";
    sixTF.text = @"0";
    [sixTF setValue:RGBACOLOR(145, 145, 145, 1) forKeyPath:@"_placeholderLabel.textColor"];
    [sixTF setValue:iphone5x_4_0?FontWithSize(14):FontWithSize(16) forKeyPath:@"_placeholderLabel.font"];
    sixTF.textColor = UIColorFromHex(0x666666);
    sixTF.font =iphone5x_4_0?FontWithSize(14): FontWithSize(16);
    self.sixTF = sixTF;
    [mainView addSubview:sixTF];
    
    UIView *lineV6 = [UIView new];
    lineV6.frame = CGRectMake(0, 204, SCREENWIDTH, 1);
    lineV6.backgroundColor = UIColorFromHex(0xEFEFEF);
    [mainView addSubview:lineV6];
    
    UITextField *sevenTF = [UITextField new];
    sevenTF.frame = CGRectMake(20, 205, SCREENWIDTH-20, 30);
    //foutthTF.keyboardType = UIKeyboardTypeDecimalPad;
    sevenTF.placeholder = @"请输入身份证号";
    sevenTF.text = @"431128199507110019";
    [sevenTF setValue:RGBACOLOR(145, 145, 145, 1) forKeyPath:@"_placeholderLabel.textColor"];
    [sevenTF setValue:iphone5x_4_0?FontWithSize(14):FontWithSize(16) forKeyPath:@"_placeholderLabel.font"];
    sevenTF.textColor = UIColorFromHex(0x666666);
    sevenTF.font =iphone5x_4_0?FontWithSize(14): FontWithSize(16);
    self.sevenTF = sevenTF;
    [mainView addSubview:sevenTF];

    UIView *lineV7 = [UIView new];
    lineV7.frame = CGRectMake(0, 234, SCREENWIDTH, 1);
    lineV7.backgroundColor = UIColorFromHex(0xEFEFEF);
    [mainView addSubview:lineV7];

    UITextField *eightTF = [UITextField new];
    eightTF.frame = CGRectMake(20, 235, SCREENWIDTH-20, 30);
    //foutthTF.keyboardType = UIKeyboardTypeDecimalPad;
    eightTF.placeholder = @"请输入身份证姓名";
    eightTF.text = @"刘雨田";
    [eightTF setValue:RGBACOLOR(145, 145, 145, 1) forKeyPath:@"_placeholderLabel.textColor"];
    [eightTF setValue:iphone5x_4_0?FontWithSize(14):FontWithSize(16) forKeyPath:@"_placeholderLabel.font"];
    eightTF.textColor = UIColorFromHex(0x666666);
    eightTF.font =iphone5x_4_0?FontWithSize(14): FontWithSize(16);
    self.eightTF = eightTF;
    [mainView addSubview:eightTF];

    UIView *lineV8 = [UIView new];
    lineV8.frame = CGRectMake(0, 264, SCREENWIDTH, 1);
    lineV8.backgroundColor = UIColorFromHex(0xEFEFEF);
    [mainView addSubview:lineV8];

    UITextField *nineTF = [UITextField new];
    nineTF.frame = CGRectMake(20, 265, SCREENWIDTH-20, 30);
    //foutthTF.keyboardType = UIKeyboardTypeDecimalPad;
    nineTF.placeholder = @"请输入意向车型";
    nineTF.text = @"雷克萨斯-雷克萨斯ES[进口]-2018款雷克萨斯ES-260-2.5-A/MT卓越版(国Ⅴ) ";
    [nineTF setValue:RGBACOLOR(145, 145, 145, 1) forKeyPath:@"_placeholderLabel.textColor"];
    [nineTF setValue:iphone5x_4_0?FontWithSize(14):FontWithSize(16) forKeyPath:@"_placeholderLabel.font"];
    nineTF.textColor = UIColorFromHex(0x666666);
    nineTF.font =iphone5x_4_0?FontWithSize(14): FontWithSize(16);
    self.ninTF = nineTF;
    [mainView addSubview:nineTF];

    UIView *lineV9 = [UIView new];
    lineV9.frame = CGRectMake(0, 294, SCREENWIDTH, 1);
    lineV9.backgroundColor = UIColorFromHex(0xEFEFEF);
    [mainView addSubview:lineV9];

    UITextField *tenTF = [UITextField new];
    tenTF.frame = CGRectMake(20, 295, SCREENWIDTH-20, 30);
    //foutthTF.keyboardType = UIKeyboardTypeDecimalPad;
    tenTF.placeholder = @"请输入意向金额";
    tenTF.text = @"25.25";
    [tenTF setValue:RGBACOLOR(145, 145, 145, 1) forKeyPath:@"_placeholderLabel.textColor"];
    [tenTF setValue:iphone5x_4_0?FontWithSize(14):FontWithSize(16) forKeyPath:@"_placeholderLabel.font"];
    tenTF.textColor = UIColorFromHex(0x666666);
    tenTF.font =iphone5x_4_0?FontWithSize(14): FontWithSize(16);
    self.tenTF = tenTF;
    [mainView addSubview:tenTF];

    UIView *lineV10 = [UIView new];
    lineV10.frame = CGRectMake(0, 324, SCREENWIDTH, 1);
    lineV10.backgroundColor = UIColorFromHex(0xEFEFEF);
    [mainView addSubview:lineV10];

    UITextField *elevenTF = [UITextField new];
    elevenTF.frame = CGRectMake(20, 325, SCREENWIDTH-20, 30);
    //foutthTF.keyboardType = UIKeyboardTypeDecimalPad;
    elevenTF.placeholder = @"请输入贷款金额";
    elevenTF.text = @"25.25";
    [elevenTF setValue:RGBACOLOR(145, 145, 145, 1) forKeyPath:@"_placeholderLabel.textColor"];
    [elevenTF setValue:iphone5x_4_0?FontWithSize(14):FontWithSize(16) forKeyPath:@"_placeholderLabel.font"];
    elevenTF.textColor = UIColorFromHex(0x666666);
    elevenTF.font =iphone5x_4_0?FontWithSize(14): FontWithSize(16);
    self.elevenTF = elevenTF;
    [mainView addSubview:elevenTF];

    UIView *lineV11 = [UIView new];
    lineV11.frame = CGRectMake(0, 354, SCREENWIDTH, 1);
    lineV11.backgroundColor = UIColorFromHex(0xEFEFEF);
    [mainView addSubview:lineV11];

    UITextField *twelveTF = [UITextField new];
    twelveTF.frame = CGRectMake(20, 355, SCREENWIDTH-20, 30);
    //foutthTF.keyboardType = UIKeyboardTypeDecimalPad;
    twelveTF.placeholder = @"请输入贷款期限";
    twelveTF.text = @"36";
    [twelveTF setValue:RGBACOLOR(145, 145, 145, 1) forKeyPath:@"_placeholderLabel.textColor"];
    [twelveTF setValue:iphone5x_4_0?FontWithSize(14):FontWithSize(16) forKeyPath:@"_placeholderLabel.font"];
    twelveTF.textColor = UIColorFromHex(0x666666);
    twelveTF.font =iphone5x_4_0?FontWithSize(14): FontWithSize(16);
    self.twelveTF = twelveTF;
    [mainView addSubview:twelveTF];

    UIView *lineV12 = [UIView new];
    lineV12.frame = CGRectMake(0, 384, SCREENWIDTH, 1);
    lineV12.backgroundColor = UIColorFromHex(0xEFEFEF);
    [mainView addSubview:lineV12];
    
    UIButton *uploadBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    CGFloat height = iphone5x_4_0?35:45;
    uploadBtn.frame = CGRectMake(10, twelveTF.bottom+25, SCREENWIDTH-20, height);
    uploadBtn.backgroundColor = BlueColor;
    uploadBtn.layer.cornerRadius = 5;
    uploadBtn.layer.masksToBounds = YES;
    [uploadBtn setTitleColor:WhiteTextColor forState:UIControlStateNormal];
    [uploadBtn setTitle:@"请求edb" forState:UIControlStateNormal];
    uploadBtn.titleLabel.font =iphone5x_4_0?FontWithSize(16): FontWithSize(18);
    [uploadBtn addTarget:self action:@selector(submit:) forControlEvents:UIControlEventTouchUpInside];
    [mainView addSubview:uploadBtn];
}

- (void)submit:(UIButton *)btn
{
    OutsideViewController *outSideVC = [OutsideViewController new];
    outSideVC.bankCode = self.firstTF.text;
    outSideVC.assuerNo = self.secondTF.text;
    outSideVC.orderNo = self.thirdTF.text;
    outSideVC.regfrom = self.fourthTF.text;
    outSideVC.userType = 0; //用户类型：0-主借款人，1-共还人
    outSideVC.business_type = self.fivTF.text;//业务类型：1-新车贷；2-二手车贷；3-新能源车贷；4-装修贷；5-车位贷
    outSideVC.IsEsbUrl = NO;
    //@"http://114.55.55.41:8998";//传入esb测试地址，可自己修改成线上地址//@"http://esb.hrfax.cn";
    outSideVC.clientIdCard = self.sevenTF.text; //身份证号
    outSideVC.clientName = self.eightTF.text; //身份证姓名
    outSideVC.carType = self.ninTF.text; //意向车型
    outSideVC.loanAmount = self.tenTF.text; //意向金额
    outSideVC.actualLoanAmount = self.elevenTF.text; //贷款金额
    outSideVC.instalmentNum = self.twelveTF.text; //贷款分期
    outSideVC.delegate = self;  
    //自己创建的block,可在面签成功代理中设置
    [self setFaceSignResult:^(NSString *string) {
        //第三方机构去做自己想要的操作。
        NSLog(@"signOn=%@",string);
    }];
    [self.navigationController pushViewController:outSideVC animated:YES];
}

#pragma mark -- outSideViewControllerDelegate
//中途返回的代理
- (void)all_goBack:(NSString *)back
{
    [self.navigationController popViewControllerAnimated:YES];
    NSLog(@"back=%@",back);
}

//面签成功的代理
- (void)chatSuccess_SignOn:(NSString *)signOn
{
    [self.navigationController popViewControllerAnimated:YES];
    self.faceSignResult(signOn);//这个block是自己设置，名字可自己修改
}

@end
