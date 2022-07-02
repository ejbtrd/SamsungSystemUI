.class public Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;
.super Ljava/lang/Object;
.source "SecStatusBarSetupFactoryImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactory;


# instance fields
.field private mBootAnimationFinishedCache:Lcom/android/systemui/BootAnimationFinishedCache;

.field private mHideInformationMirroringController:Lcom/android/systemui/statusbar/SecHideInformationMirroringController;

.field private mIndicatorGardenIconManagerFactory:Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

.field private mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

.field private mJankAnalyzerHelper:Lcom/android/systemui/statusbar/phone/SecJankAnalyzerHelper;

.field private mSettingsListener:Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;

.field private mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

.field private mTouchProximityHelper:Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;

.field private mTwoPhoneModeController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;


# direct methods
.method public static synthetic $r8$lambda$xbofrhaDWOX4f6HRY8zJOXeCdcQ(Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->lambda$makeStatusBarView$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/BootAnimationFinishedCache;Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;Lcom/android/systemui/statusbar/phone/SecJankAnalyzerHelper;Lcom/android/systemui/statusbar/SecHideInformationMirroringController;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mBootAnimationFinishedCache:Lcom/android/systemui/BootAnimationFinishedCache;

    .line 64
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mSettingsListener:Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;

    .line 65
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mTouchProximityHelper:Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;

    .line 66
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mIndicatorGardenIconManagerFactory:Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    .line 67
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 68
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    .line 69
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mTwoPhoneModeController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    .line 70
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mJankAnalyzerHelper:Lcom/android/systemui/statusbar/phone/SecJankAnalyzerHelper;

    .line 71
    iput-object p9, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mHideInformationMirroringController:Lcom/android/systemui/statusbar/SecHideInformationMirroringController;

    return-void
.end method

.method private synthetic lambda$makeStatusBarView$0()V
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mHideInformationMirroringController:Lcom/android/systemui/statusbar/SecHideInformationMirroringController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->init()V

    return-void
.end method


# virtual methods
.method public makeStatusBarView()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mSettingsListener:Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarSettingsListener;->init()V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mTouchProximityHelper:Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecStatusBarTouchProximityHelper;->init()V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mIndicatorGardenIconManagerFactory:Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;

    if-eqz v0, :cond_2

    .line 94
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenIconManagerFactory;->init()V

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mSlimIndicatorViewMediator:Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    if-eqz v0, :cond_3

    .line 97
    invoke-interface {v0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->init()V

    .line 99
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportTwoPhone()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mTwoPhoneModeController:Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->init()V

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mJankAnalyzerHelper:Lcom/android/systemui/statusbar/phone/SecJankAnalyzerHelper;

    if-eqz v0, :cond_5

    .line 103
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecJankAnalyzerHelper;->init()V

    .line 105
    :cond_5
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_HIDE_INFORMATION_MIRRORING:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mHideInformationMirroringController:Lcom/android/systemui/statusbar/SecHideInformationMirroringController;

    if-eqz v0, :cond_7

    .line 106
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;->mBootAnimationFinishedCache:Lcom/android/systemui/BootAnimationFinishedCache;

    if-eqz v1, :cond_6

    .line 107
    new-instance v0, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/SecStatusBarSetupFactoryImpl;)V

    invoke-interface {v1, v0}, Lcom/android/systemui/BootAnimationFinishedCache;->addListener(Lcom/android/systemui/BootAnimationFinishedCache$BootAnimationFinishedListener;)Z

    goto :goto_0

    .line 109
    :cond_6
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SecHideInformationMirroringController;->init()V

    :cond_7
    :goto_0
    return-void
.end method

.method public startBeforeCreateAndAddWindows()V
    .locals 0

    return-void
.end method
