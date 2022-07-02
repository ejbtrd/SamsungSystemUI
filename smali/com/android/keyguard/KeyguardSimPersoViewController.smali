.class public Lcom/android/keyguard/KeyguardSimPersoViewController;
.super Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;
.source "KeyguardSimPersoViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/KeyguardSecPinBasedInputViewController<",
        "Lcom/android/keyguard/KeyguardSimPersoView;",
        ">;"
    }
.end annotation


# static fields
.field private static final DOMESTIC_OTA_START:Ljava/lang/String;

.field private static final SIM_TYPE:Ljava/lang/String;

.field private static mNumRetry:I


# instance fields
.field private final mCarrierLabel:Lcom/android/keyguard/CarrierText;

.field private mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mOrientation:I

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private volatile mSimCheckInProgress:Z

.field private mSubId:I

.field private final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "ril.simtype"

    .line 37
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->SIM_TYPE:Ljava/lang/String;

    const-string/jumbo v0, "ril.domesticOtaStart"

    .line 38
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->DOMESTIC_OTA_START:Ljava/lang/String;

    const/4 v0, 0x0

    .line 45
    sput v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mNumRetry:I

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardSimPersoView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 0

    .line 124
    invoke-direct/range {p0 .. p14}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;-><init>(Lcom/android/keyguard/KeyguardSecPinBasedInputView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSimCheckInProgress:Z

    const/4 p1, 0x1

    .line 51
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mOrientation:I

    .line 56
    new-instance p3, Lcom/android/keyguard/KeyguardSimPersoViewController$1;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSimPersoViewController$1;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 74
    new-instance p3, Lcom/android/keyguard/KeyguardSimPersoViewController$2;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSimPersoViewController$2;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController;)V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 129
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 130
    iput-object p14, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 132
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    if-eqz p2, :cond_0

    .line 133
    check-cast p2, Lcom/android/keyguard/SecPasswordTextView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/android/keyguard/SecPasswordTextView;->setMaxLength(I)V

    .line 135
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSimPersoView;

    sget p3, Lcom/android/systemui/R$id;->carrier_text:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/keyguard/CarrierText;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/android/systemui/util/DeviceState;->isCenterDisplayCutOut(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 137
    iget p3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mOrientation:I

    if-ne p3, p1, :cond_1

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/systemui/R$dimen;->carrier_label_portrait_max_width:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    :cond_1
    const p3, 0x7fffffff

    .line 140
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 144
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p2, Lcom/android/keyguard/KeyguardSimPersoView;

    sget p3, Lcom/android/systemui/R$id;->progress:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mProgressBar:Landroid/widget/ProgressBar;

    .line 145
    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 146
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->updateProgressBarDrawable()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardSimPersoViewController;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mOrientation:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/keyguard/KeyguardSimPersoViewController;I)I
    .locals 0

    .line 33
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/content/Context;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/widget/ProgressBar;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 33
    sget v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mNumRetry:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0

    .line 33
    sput p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mNumRetry:I

    return p0
.end method

.method static synthetic access$1104()I
    .locals 1

    .line 33
    sget v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mNumRetry:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mNumRetry:I

    return v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->SIM_TYPE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/android/keyguard/KeyguardSimPersoViewController;->DOMESTIC_OTA_START:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/content/Context;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/content/Context;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/content/Context;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1702(Lcom/android/keyguard/KeyguardSimPersoViewController;Z)Z
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSimCheckInProgress:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/keyguard/KeyguardSimPersoViewController;Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;)Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/content/res/Resources;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardSimPersoViewController;)Lcom/android/keyguard/CarrierText;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCarrierLabel:Lcom/android/keyguard/CarrierText;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/KeyguardSimPersoViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardSimPersoViewController;)I
    .locals 0

    .line 33
    iget p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSubId:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/keyguard/KeyguardSimPersoViewController;)Landroid/view/View;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private updateProgressBarDrawable()V
    .locals 2

    const-string v0, "background"

    .line 307
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 308
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz v0, :cond_0

    .line 309
    sget v0, Lcom/android/systemui/R$drawable;->keyguard_progress_material_whitebg:I

    goto :goto_0

    .line 310
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->keyguard_progress_material:I

    .line 308
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method protected getSecurityViewId()I
    .locals 0

    .line 303
    sget p0, Lcom/android/systemui/R$id;->keyguard_sec_sim_perso_view:I

    return p0
.end method

.method protected onViewAttached()V
    .locals 2

    .line 163
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewAttached()V

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 165
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 170
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->onViewDetached()V

    .line 171
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public resetState()V
    .locals 2

    .line 150
    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->resetState()V

    const-string v0, "KeyguardSimPersoView"

    const-string v1, "Resetting state"

    .line 152
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSubId:I

    .line 156
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    if-eqz p0, :cond_0

    .line 157
    sget v0, Lcom/android/systemui/R$string;->kg_ktt_sim_perso_instructions:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    :cond_0
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 0

    .line 316
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardSimPersoViewController;->updateProgressBarDrawable()V

    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .locals 6

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    instance-of v0, v0, Lcom/android/keyguard/SecPasswordTextView;

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    check-cast v1, Lcom/android/keyguard/SecPasswordTextView;

    invoke-virtual {v1}, Lcom/android/keyguard/SecPasswordTextView;->getPasswordText()Ljava/lang/String;

    move-result-object v1

    .line 215
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_KTT_USIM_TEXT:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget v2, Lcom/android/keyguard/KeyguardSimPersoViewController;->mNumRetry:I

    const/4 v4, 0x5

    if-lt v2, v4, :cond_1

    .line 216
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-virtual {v1, v3, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 217
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v2, Lcom/android/systemui/R$string;->kg_password_perso_max_failed:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(Ljava/lang/CharSequence;)V

    .line 218
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    .line 222
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 223
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v2, Lcom/android/systemui/R$string;->kg_empty_sim_perso_hint:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    .line 224
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-virtual {p0, v3, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 225
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    .line 227
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x4

    if-ge v2, v4, :cond_3

    .line 228
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecAbsKeyInputViewController;->mSecurityMessageDisplay:Lcom/android/keyguard/KeyguardMessageArea;

    sget v2, Lcom/android/systemui/R$string;->kg_ktt_sim_perso_instructions:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardMessageArea;->setMessage(I)V

    .line 229
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSimPersoView;

    invoke-virtual {p0, v3, v3}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    .line 230
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    return-void

    :cond_3
    const/4 v2, 0x0

    .line 234
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->setEnabledKeypad(Z)V

    .line 235
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecPinBasedInputViewController;->mOkButton:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 238
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    if-nez v2, :cond_4

    .line 239
    new-instance v2, Lcom/android/keyguard/KeyguardSimPersoViewController$3;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/keyguard/KeyguardSimPersoViewController$3;-><init>(Lcom/android/keyguard/KeyguardSimPersoViewController;Ljava/lang/String;Lcom/android/keyguard/KeyguardSecurityCallback;)V

    iput-object v2, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    .line 294
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSimCheckInProgress:Z

    if-nez v0, :cond_4

    .line 295
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mSimCheckInProgress:Z

    .line 296
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPersoViewController;->mCheckSimPersoThread:Lcom/android/keyguard/KeyguardSimPersoViewController$CheckSimPerso;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_4
    return-void
.end method
