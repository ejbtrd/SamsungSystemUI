.class public Lcom/android/keyguard/KeyguardUCMViewController;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.source "KeyguardUCMViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;,
        Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;,
        Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;,
        Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardSecPinBasedInputViewController<",
        "Lcom/android/keyguard/KeyguardUCMView;",
        ">;"
    }
.end annotation


# static fields
.field private static sVendorName:Ljava/lang/String; = null

.field private static final syncObj:Ljava/lang/Object;

.field private static unlockOngoing:Z = false


# instance fields
.field private mAgentID:Ljava/lang/String;

.field private mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

.field private mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

.field private mError:I

.field private mGetStatusThread:Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

.field private mMISCInfo:Ljava/lang/String;

.field private mPinMaxLength:I

.field private mPinMinLength:I

.field private mPinText:Ljava/lang/String;

.field private mPukMaxLength:I

.field private mPukMinLength:I

.field private mPukSupported:Z

.field private mPukText:Ljava/lang/String;

.field private mRemainingAttempts:I

.field private final mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

.field private mStatus:I

.field private final mUCMAgent:Landroid/widget/TextView;

.field private final mUCMMiscTagValue:Landroid/widget/TextView;

.field private mUnlockProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public static synthetic $r8$lambda$yfNrvpoP5UsXv9zCe_tP04W1OZo(Lcom/android/keyguard/KeyguardUCMViewController;IZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardUCMViewController;->lambda$checkPassword$0(IZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardUCMView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 78
    invoke-direct/range {p0 .. p14}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 47
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukSupported:Z

    .line 49
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    .line 50
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    .line 51
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMinLength:I

    .line 52
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMaxLength:I

    .line 53
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMinLength:I

    .line 54
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMaxLength:I

    const/4 p3, -0x1

    .line 55
    iput p3, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    .line 56
    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mError:I

    .line 57
    new-instance p2, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    invoke-direct {p2, p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;Lcom/android/keyguard/KeyguardUCMViewController$1;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    .line 83
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->checkUCMKeyguardStatus()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/keyguard/KeyguardUCMViewController;->sVendorName:Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getVendorID()V

    .line 86
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardUCMView;

    sget p2, Lcom/android/systemui/R$id;->ucm_misctag:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMMiscTagValue:Landroid/widget/TextView;

    .line 87
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardUCMView;

    sget p2, Lcom/android/systemui/R$id;->ucm_csname:I

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMAgent:Landroid/widget/TextView;

    .line 88
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 89
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 91
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardUCMViewController;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->startProgress(Z)V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/android/keyguard/KeyguardUCMViewController;->unlockOngoing:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    .line 34
    sput-boolean p0, Lcom/android/keyguard/KeyguardUCMViewController;->unlockOngoing:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/android/keyguard/KeyguardUCMViewController;Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;)Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    return-object p1
.end method

.method static synthetic access$1200(I)Landroid/os/Bundle;
    .locals 0

    .line 34
    invoke-static {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->generatePassword(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;Ljava/lang/String;)[I
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMViewController;->verifyPUK(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1602(Lcom/android/keyguard/KeyguardUCMViewController;Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;)Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardUCMViewController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    return p0
.end method

.method static synthetic access$2000(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/app/ProgressDialog;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/android/keyguard/KeyguardUCMViewController;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/content/Context;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 1

    .line 34
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500()Ljava/lang/String;
    .locals 1

    .line 34
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->getErrorMessage(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/CharSequence;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/widget/TextView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMMiscTagValue:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/content/Context;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardUCMViewController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mError:I

    return p0
.end method

.method static synthetic access$3000(Lcom/android/keyguard/KeyguardUCMViewController;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    return p0
.end method

.method static synthetic access$3100(Lcom/android/keyguard/KeyguardUCMViewController;I)Ljava/lang/String;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->getRemainingCount(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/content/Context;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/content/Context;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/content/Context;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3500(Lcom/android/keyguard/KeyguardUCMViewController;[BI)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardUCMViewController;->checkPassword([BI)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/keyguard/KeyguardUCMViewController;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukSupported:Z

    return p0
.end method

.method static synthetic access$3700(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/content/Context;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/content/Context;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3900(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/content/Context;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardUCMViewController;)Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/content/Context;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4100(Lcom/android/keyguard/KeyguardUCMViewController;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPinText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/keyguard/KeyguardUCMViewController;)Z
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->confirmPin()Z

    move-result p0

    return p0
.end method

.method static synthetic access$4500(Lcom/android/keyguard/KeyguardUCMViewController;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->verifyPUKAndUnlock()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$4700(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/content/Context;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4800(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/content/Context;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$4900(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/content/Context;
    .locals 0

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardUCMViewController;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->stopProgress()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5300(Lcom/android/keyguard/KeyguardUCMViewController;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardUCMViewController;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getAgentInfoAndUpdateStatus()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/Object;
    .locals 1

    .line 34
    sget-object v0, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/keyguard/KeyguardUCMViewController;Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;)Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)[I
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->verifyPIN(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private checkPassword([BI)V
    .locals 2

    .line 842
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 843
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 848
    invoke-static {p1}, Lcom/android/internal/widget/LockscreenCredential;->createSmartcardPassword([B)Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p1

    new-instance v1, Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/keyguard/KeyguardUCMViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;I)V

    .line 846
    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/widget/LockPatternChecker;->checkCredential(Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/widget/LockscreenCredential;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method private checkUCMKeyguardStatus()Ljava/lang/String;
    .locals 2

    .line 179
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string p0, "KeyguardUCMPinView"

    const-string v1, "failed to get UCM service"

    .line 182
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 186
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    .line 187
    invoke-interface {p0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getKeyguardStorageForCurrentUser(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 189
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    const-string v1, ""

    .line 192
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "none"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object p0

    :cond_1
    return-object v0
.end method

.method private confirmPin()Z
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "confirmPin called"

    .line 618
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPinText:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getPasswordTextByString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static generatePassword(I)Landroid/os/Bundle;
    .locals 3

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "generatePassword called"

    .line 199
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/16 v2, 0x83

    if-eq p0, v2, :cond_0

    const-string p0, "Do not need to get password"

    .line 201
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 204
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 208
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v0, v2, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->generateKeyguardPassword(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 210
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p0, "mUcmBinder == null"

    .line 213
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method private declared-synchronized getAgentInfoAndUpdateStatus()V
    .locals 8

    monitor-enter p0

    :try_start_0
    const-string v0, "KeyguardUCMPinView"

    const-string v1, "getAgentInfoAndUpdateStatus called"

    .line 323
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "failed to get UCM service"

    .line 326
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    monitor-exit p0

    return-void

    .line 330
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "failed to get getStatus"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 334
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    const-string v3, "errorresponse"

    const/4 v4, 0x0

    .line 337
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v5, 0xe

    if-ne v3, v5, :cond_4

    const-string v3, "KeyguardUCMPinView"

    const-string v6, "Boot init condition"

    .line 339
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-interface {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService;->updateAgentList()V

    move v3, v4

    :goto_0
    const/16 v6, 0xa

    if-ge v3, v6, :cond_4

    .line 342
    invoke-interface {v0, v1}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getStatus(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v6, "errorresponse"

    .line 344
    invoke-virtual {v2, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-eq v6, v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "KeyguardUCMPinView"

    const-string v7, "UcmAgentService.ERROR_NO_PLUGIN_AGENT_FOUND error"

    .line 348
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v6, 0x3e8

    .line 355
    :try_start_3
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 357
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string v0, "KeyguardUCMPinView"

    const-string v1, "failed to get getStatus"

    .line 350
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 351
    monitor-exit p0

    return-void

    :cond_4
    :goto_1
    :try_start_5
    const-string/jumbo v0, "state"

    const/4 v1, -0x1

    .line 363
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    const-string v0, "miscInfo"

    const-string v1, ""

    .line 364
    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    const-string v0, "minPinLength"

    .line 365
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMinLength:I

    const-string v0, "maxPinLength"

    .line 366
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMaxLength:I

    const-string v0, "minPukLength"

    .line 367
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMinLength:I

    const-string v0, "maxPukLength"

    .line 368
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMaxLength:I

    const-string/jumbo v0, "remainCnt"

    .line 369
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    const-string v0, "errorresponse"

    .line 370
    invoke-virtual {v2, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mError:I

    const-string v0, "KeyguardUCMPinView"

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardUCMPinView"

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pin puk "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPinMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMinLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukMaxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardUCMPinView"

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "misc : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mMISCInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardUCMPinView"

    .line 374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pin remain : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "KeyguardUCMPinView"

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mError:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 377
    :try_start_6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 379
    :goto_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static getCSUri()Ljava/lang/String;
    .locals 3

    .line 173
    sget-object v0, Lcom/android/keyguard/KeyguardUCMViewController;->sVendorName:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/samsung/android/knox/ucm/core/UniversalCredentialUtil;->getUri(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCSUri returns : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardUCMPinView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getErrorMessage(I)Ljava/lang/String;
    .locals 7

    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "0x%08X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    packed-switch p1, :pswitch_data_5

    packed-switch p1, :pswitch_data_6

    const/high16 v6, 0x8000000

    if-ge v6, p1, :cond_0

    const/high16 v6, 0x8010000

    if-le v6, p1, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    .line 947
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->kg_ucm_smartcard_error:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 950
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->kg_ucm_unknown_error:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 944
    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->kg_ucm_smartcard_error:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 942
    :pswitch_0
    :sswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->kg_ucm_communication_error:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 915
    :pswitch_1
    :sswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->kg_ucm_internal_error:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x101
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_2
        0x1fff -> :sswitch_2
        0x1000100 -> :sswitch_1
        0x1000200 -> :sswitch_1
        0x1000300 -> :sswitch_1
        0x1000400 -> :sswitch_1
        0x2000201 -> :sswitch_1
        0x8000000 -> :sswitch_0
        0x9000000 -> :sswitch_2
        0xc000100 -> :sswitch_2
        0xc000200 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x2000101
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2000301
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2000401
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2000501
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x3000000
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getRemainingCount(I)Ljava/lang/String;
    .locals 4

    .line 837
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$plurals;->kg_attempt_left:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getStatusAndShowingDialog()V
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "getStatusAndShowingDialog"

    .line 544
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    sget-object v0, Lcom/android/keyguard/KeyguardUCMViewController;->syncObj:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

    if-nez v1, :cond_0

    .line 548
    new-instance v1, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;)V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mGetStatusThread:Lcom/android/keyguard/KeyguardUCMViewController$UCMAsyncTask;

    const-string p0, ""

    .line 549
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 551
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;
    .locals 3

    const-string v0, "com.samsung.ucs.ucsservice"

    .line 131
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/ucm/core/IUcmService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "KeyguardUCMPinView"

    const-string v2, "failed to get UCM service"

    .line 133
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private getUnlockProgressDialog(Z)Landroid/app/Dialog;
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "getUnlockProgressDialog called"

    .line 525
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_1

    .line 527
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_0

    .line 530
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->kg_ucm_loading:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 529
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$string;->kg_ucm_unlocking:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 532
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 535
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 536
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 537
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/view/Window;

    const/16 v0, 0x7d9

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 540
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    move-object p0, p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method private getVendorID()V
    .locals 4

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "getVendorID() called"

    .line 109
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "failed to get UCM service"

    .line 112
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 116
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-interface {v1, v2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->getAgentInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "failed to get agentInfo"

    .line 119
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v2, "id"

    const-string v3, ""

    .line 122
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    const-string v2, "isPUKSupported"

    const/4 v3, 0x0

    .line 123
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukSupported:Z

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAgentID : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mPukSupported : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukSupported:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$checkPassword$0(IZI)V
    .locals 1

    const/4 v0, 0x0

    .line 851
    iput-object v0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->mPendingLockCheck:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    .line 852
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/keyguard/KeyguardUCMViewController;->onPasswordChecked(IZIZ)V

    return-void
.end method

.method private setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V
    .locals 2

    .line 955
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-nez v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardMessageArea;->findSecurityMessageDisplay(Landroid/view/View;)Lcom/android/keyguard/KeyguardMessageArea;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 959
    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 960
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private startProgress(Z)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 97
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method private stopProgress()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    const/4 v0, 0x0

    .line 103
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 105
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardUCMView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    return-void
.end method

.method private verifyPIN(Ljava/lang/String;)[I
    .locals 6

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPIN called"

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 220
    fill-array-data v1, :array_0

    .line 225
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "failed to get UCM service"

    .line 227
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 231
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, p1, v4}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPin(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v2, "state"

    const/4 v3, -0x1

    .line 232
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    const-string/jumbo v2, "remainCnt"

    .line 233
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    const-string v2, "errorresponse"

    .line 234
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remainCnt : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    const/16 v3, 0x83

    if-ne v2, v3, :cond_1

    const-string v2, "PIN verification succeed"

    .line 240
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "PIN verification failed"

    .line 242
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    aput v0, v1, v5

    const/4 v0, 0x1

    .line 246
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    aput p0, v1, v0

    const/4 p0, 0x2

    aput p1, v1, p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 251
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v1

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private verifyPINAndUnlock(Ljava/lang/String;)V
    .locals 2

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPINAndUnlock called"

    .line 577
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 580
    sput-boolean v1, Lcom/android/keyguard/KeyguardUCMViewController;->unlockOngoing:Z

    const/4 v0, 0x0

    .line 581
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUCMViewController;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 582
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    if-nez v0, :cond_0

    .line 583
    new-instance v0, Lcom/android/keyguard/KeyguardUCMViewController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController$1;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPinThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPin;

    .line 603
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private verifyPUK(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPUK called"

    .line 261
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 262
    fill-array-data v1, :array_0

    .line 268
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 269
    invoke-direct {p0, p2}, Lcom/android/keyguard/KeyguardUCMViewController;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v2, :cond_4

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 276
    :cond_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getUCMService()Lcom/samsung/android/knox/ucm/core/IUcmService;

    move-result-object v2

    if-nez v2, :cond_1

    const-string p0, "failed to get UCM service"

    .line 278
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput v5, v1, v4

    return-object v1

    .line 291
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/keyguard/KeyguardUCMViewController;->getCSUri()Ljava/lang/String;

    move-result-object v3

    .line 292
    invoke-interface {v2, v3, p1, p2}, Lcom/samsung/android/knox/ucm/core/IUcmService;->verifyPuk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo p2, "state"

    .line 293
    invoke-virtual {p1, p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    const-string/jumbo p2, "remainCnt"

    .line 294
    invoke-virtual {p1, p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    const-string p2, "errorresponse"

    .line 295
    invoke-virtual {p1, p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 296
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remainCnt : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "errorCode : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    const/16 v2, 0x83

    if-eq p2, v2, :cond_3

    const/16 v2, 0x84

    if-eq p2, v2, :cond_2

    const-string p2, "PUK verification failed : BLOCKED"

    .line 308
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p2, "PUK verification succeed : LOCKED"

    .line 302
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string p2, "PUK verification succeed : UNLOCKED"

    .line 305
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :goto_0
    iget p2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStatus:I

    aput p2, v1, v4

    const/4 p2, 0x1

    .line 313
    iget p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mRemainingAttempts:I

    aput p0, v1, p2

    const/4 p0, 0x2

    aput p1, v1, p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 317
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-object v1

    :cond_4
    :goto_2
    aput v5, v1, v4

    return-object v1

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method private verifyPUKAndUnlock()V
    .locals 3

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPUKAndUnlock called"

    .line 807
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardUCMView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setKeepScreenOn(Z)V

    .line 809
    sput-boolean v1, Lcom/android/keyguard/KeyguardUCMViewController;->unlockOngoing:Z

    const/4 v0, 0x0

    .line 810
    invoke-direct {p0, v0}, Lcom/android/keyguard/KeyguardUCMViewController;->getUnlockProgressDialog(Z)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 811
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    if-nez v0, :cond_0

    .line 812
    new-instance v0, Lcom/android/keyguard/KeyguardUCMViewController$2;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPukText:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mPinText:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/keyguard/KeyguardUCMViewController$2;-><init>(Lcom/android/keyguard/KeyguardUCMViewController;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mCheckUcmPukThread:Lcom/android/keyguard/KeyguardUCMViewController$CheckUcmPuk;

    .line 831
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected getPasswordTextByString()Ljava/lang/String;
    .locals 1

    .line 970
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, p0, Lcom/android/keyguard/SecPasswordTextView;

    if-eqz v0, :cond_0

    .line 971
    check-cast p0, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {p0}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 973
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getSecurityViewId()I
    .locals 0

    .line 966
    sget p0, Lcom/android/systemui/R$id;->keyguard_ucm_pin_view:I

    return p0
.end method

.method protected onPasswordChecked(IZIZ)V
    .locals 2

    .line 858
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPasswordChecked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "KeyguardUCMPinView"

    invoke-static {p4, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    .line 860
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p2

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-interface {p2, p1, p4, p3}, Lcom/android/keyguard/KeyguardSecurityCallback;->reportUnlockAttempt(IZI)V

    .line 861
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object p0

    invoke-interface {p0, p4, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    goto :goto_0

    .line 863
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$string;->kg_ucm_password_not_matching:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardUCMViewController;->setMessageSecurityMessageDisplay(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 162
    invoke-super {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onPause()V

    const-string v0, "KeyguardUCMPinView"

    const-string v1, "onPause called"

    .line 164
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 165
    sput-boolean v0, Lcom/android/keyguard/KeyguardUCMViewController;->unlockOngoing:Z

    .line 166
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 168
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method protected onViewDetached()V
    .locals 1

    .line 153
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    .line 154
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 155
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 156
    iput-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUnlockProgressDialog:Landroid/app/ProgressDialog;

    :cond_0
    return-void
.end method

.method public resetState()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "resetState called"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getVendorID()V

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mAgentID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMAgent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMAgent:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mUCMAgent:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 148
    :goto_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getStatusAndShowingDialog()V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 3

    const-string v0, "KeyguardUCMPinView"

    const-string/jumbo v1, "verifyPasswordAndUnlock override called"

    .line 556
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController;->getPasswordTextByString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 558
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 561
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->getState()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string/jumbo p0, "unknown status nothings to do"

    .line 571
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 567
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUCMViewController;->mStateMachine:Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUCMViewController$StateMachine;->verifyPUKAndUpdateUI()V

    goto :goto_0

    .line 564
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/keyguard/KeyguardUCMViewController;->verifyPINAndUnlock(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
