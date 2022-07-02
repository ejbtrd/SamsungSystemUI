.class public Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;
.super Ljava/lang/Object;
.source "TwoPhoneModeControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;
.implements Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

.field private mModel:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

.field private mTint:I

.field private mUpdateIconRunnable:Ljava/lang/Runnable;

.field private mUserSwitchCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public static synthetic $r8$lambda$Cd_gtbz7tWE73Mx-cQ3jsSa-sfk(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->lambda$init$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$li2msqhEGZ21kDY1i9IOyFnuDGg(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->lambda$showDoneToast$1(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;Lcom/android/systemui/util/SettingsHelper;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;",
            "Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 85
    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mUpdateIconRunnable:Ljava/lang/Runnable;

    .line 329
    new-instance v0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mModel:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mContext:Landroid/content/Context;

    .line 127
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    .line 128
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    .line 129
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 130
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mStatusBarLazy:Ldagger/Lazy;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mModel:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Landroid/content/Context;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;ZI)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->updateIcons(ZI)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mSystemPropertiesWrapper:Lcom/android/systemui/statusbar/utils/SystemPropertiesWrapper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->considerValuesAndUpdateIcons(I)V

    return-void
.end method

.method private considerValuesAndUpdateIcons()V
    .locals 1

    .line 235
    const-class v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 236
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getConstantDelaysWhenSwitchingUser()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    .line 235
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->considerValuesAndUpdateIcons(I)V

    return-void
.end method

.method private considerValuesAndUpdateIcons(I)V
    .locals 3

    .line 239
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mUpdateIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mUpdateIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 244
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mUpdateIconRunnable:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private isTwoPhoneUser(I)Z
    .locals 0

    if-lez p1, :cond_0

    const/16 p0, 0x64

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$init$0()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mModel:Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$TwoPhoneModeModel;->init(Lcom/android/systemui/util/SettingsHelper;)V

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->considerValuesAndUpdateIcons(I)V

    .line 148
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 149
    const-class v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 150
    const-class v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string v1, "StatusBar.TwoPhoneModeController"

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->registerSubscriber(Ljava/lang/String;Lcom/android/systemui/slimindicator/SlimIndicatorViewSubscriber;)V

    return-void
.end method

.method private synthetic lambda$showDoneToast$1(I)V
    .locals 3

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 297
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->isTwoPhoneUser(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 298
    sget p1, Lcom/android/systemui/R$string;->switched_to_twophone_mode:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/R$string;->switched_to_onephone_mode:I

    .line 297
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 299
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    const-string p1, "DONE toast show for twophone."

    .line 300
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->printLogLine(Ljava/lang/String;)V

    return-void
.end method

.method private printLogLine(Ljava/lang/String;)V
    .locals 0

    .line 278
    sget-boolean p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "StatusBar.TwoPhoneModeController"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateIcons(ZI)V
    .locals 6

    .line 188
    const-class v0, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    const-class v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    .line 189
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;

    const-string/jumbo v2, "two_phone_mode_icon"

    invoke-interface {v1, v2}, Lcom/android/systemui/slimindicator/SlimIndicatorViewMediator;->isBlocked(Ljava/lang/String;)Z

    move-result v1

    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIcons(visible:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ") isBlockedByQuickStar:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    .line 193
    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->printLogLine(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    if-nez v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 196
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->status_bar_twophone_mode_icon_padding_start:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 200
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object v3

    const/16 v4, 0x8

    if-eqz v3, :cond_3

    .line 202
    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;->getTwoPhoneIconImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 204
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    invoke-virtual {v3, v1, v2, v2, v2}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    if-eqz p1, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v4

    .line 206
    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 212
    invoke-interface {v3}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;->getTwoPhoneIconImageView()Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 214
    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    invoke-virtual {v3, v1, v2, v2, v2}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move v2, v4

    .line 216
    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 221
    iget v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mTint:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->onDarkChanged(Landroid/graphics/Rect;FI)V

    .line 225
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenOnLayout(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    .line 226
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->onGardenOnLayout(Lcom/android/systemui/statusbar/phone/IndicatorGarden;)V

    return-void
.end method


# virtual methods
.method public inflateIcon(Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;)Landroid/widget/ImageView;
    .locals 3

    if-eqz p1, :cond_1

    .line 173
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;->getTwoPhoneIconContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 175
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {p0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p0, 0x8

    .line 178
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;->getTwoPhoneIconContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init()V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportTwoPhone()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 144
    :cond_0
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 145
    new-instance v1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isOnFeature()Z
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mIndicatorRuneWrapper:Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/utils/IndicatorRuneWrapper;->supportTwoPhone()Z

    move-result p0

    return p0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 253
    iput p3, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mTint:I

    .line 254
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPhoneStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 256
    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;->getTwoPhoneIconImageView()Landroid/widget/ImageView;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    .line 259
    invoke-static {p1, p2, p3}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mTint:I

    .line 261
    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mTint:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method

.method public showDoneToast(I)V
    .locals 4

    .line 290
    sget-object v0, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    const-class v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 293
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getConstantDelaysWhenSwitchingUser()I

    move-result v1

    add-int/lit16 v1, v1, 0xbb8

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "I\'ll post showDoneToast() after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->printLogLine(Ljava/lang/String;)V

    .line 295
    new-instance v2, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;I)V

    int-to-long p0, v1

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateKeyguardIconColor(I)V
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->mStatusBarLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPanelController()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 270
    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeViewInterface;->getTwoPhoneIconImageView()Landroid/widget/ImageView;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 272
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_0
    return-void
.end method

.method public updateQuickStarStyle()V
    .locals 1

    const/4 v0, 0x0

    .line 316
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->considerValuesAndUpdateIcons(I)V

    return-void
.end method

.method public updateTwoPhoneIcons()V
    .locals 0

    .line 169
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeControllerImpl;->considerValuesAndUpdateIcons()V

    return-void
.end method
