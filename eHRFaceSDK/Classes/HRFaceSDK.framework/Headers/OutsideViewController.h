//
//  OutsideViewController.h
//  ICBCFace
//
//  Created by 吕清毅 on 2018/12/3.
//  Copyright © 2018年 lqy. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

//block回调
typedef void (^GoBackData)(NSString *statue);
//创建协议
@protocol OutsideViewControllerDelegate <NSObject>
- (void)all_goBack:(NSString *)back; //返回代理
- (void)chatSuccess_SignOn:(NSString *)signOn;
@end

@interface OutsideViewController : UIViewController

@property (nonatomic, strong) UIColor *headColor;
@property (nonatomic, copy) NSString *bankTitle;
@property (nonatomic, copy) NSString *bankCode;
@property (nonatomic, copy) NSString *assuerNo;
@property (nonatomic, copy) NSString *orderNo;
@property (nonatomic, copy) NSString *regfrom;
@property (nonatomic, copy) NSString *business_type; //业务类型
@property (nonatomic, assign) NSInteger userType;//用户类型。0:主借款人,1共还人,2担保人3共借人 4.指标人
@property (nonatomic, copy) NSString * esbUrl;
@property (nonatomic, copy) NSString * url;
@property (nonatomic,assign) BOOL isIdCardNecessary;
@property (nonatomic, assign) BOOL IsIndependent; //是否是独立面签;
@property (nonatomic, assign) BOOL IsOnline;
@property (nonatomic, strong) NSDictionary * Nimdata;
@property (nonatomic, assign) BOOL isFromImageSign;
@property (nonatomic,copy) NSString *coopCode;
@property (nonatomic, copy) NSString *clientIdCard;//身份证号
@property (nonatomic, copy) NSString *clientName;//身份证姓名
@property (nonatomic, copy) NSString *carType;//车型
@property (nonatomic, copy) NSString *loanAmount;//意向金额
@property (nonatomic, copy) NSString *actualLoanAmount;//贷款金额
@property (nonatomic, copy) NSString *instalmentNum;//贷款期限

@property (nonatomic, copy) NSString *authTaskId;

@property (nonatomic, copy) NSString *capital; //贷款本金 //选传
@property (nonatomic, copy) NSString *firstMoney; //首付款 //选传
@property (nonatomic, copy) NSString *installmentMoney; //分期金额 //选传
@property (nonatomic, copy) NSString *serviceFee; //按揭服务费 //选传
@property (nonatomic, copy) NSString *carPrice; //车价 //选传
@property (nonatomic, copy) NSString *signOn;

@property (nonatomic, copy) NSString *idCardVerso;
@property (nonatomic, copy) NSString *idCardFront;

@property (nonatomic, copy) GoBackData backData;
@property (nonatomic, weak) id <OutsideViewControllerDelegate> delegate;

@property (nonatomic,copy) NSDictionary *signDic;


@end

NS_ASSUME_NONNULL_END
