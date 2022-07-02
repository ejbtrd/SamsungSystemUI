.class public Lcom/android/keyguard/SecLockIconViewController;
.super Lcom/android/keyguard/LockIconViewController;
.source "SecLockIconViewController.java"

# interfaces
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/keyguard/LockIconViewController<",
        "Lcom/android/keyguard/SecLockIconView;",
        ">;",
        "Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;"
    }
.end annotation


# instance fields
.field mAlphaModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mColorModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private mCurrentOrientation:I

.field private mIsDefaultLockViewMode:Z

.field private final mKeyguardSecIndicationController:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

.field private final mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field mLockIconDrawableModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mLockStarCallback:Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;

.field private final mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

.field private final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field private mRunningFace:Z

.field private final mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSmartLockIcon:Landroid/graphics/drawable/Drawable;

.field private final mSmartLockedLabel:Ljava/lang/CharSequence;

.field mUnlockIconDrawableModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mVisibilityModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$VKLsfwN7eQSeD786fpZPMeIPGMA(Lcom/android/keyguard/SecLockIconViewController;Landroid/view/View;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/SecLockIconViewController;->lambda$updateVisibility$1(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$a4ETTQsgfeovmYlaFAtaLukspd4(Lcom/android/keyguard/SecLockIconViewController;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/SecLockIconViewController;->lambda$new$0(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/SecLockIconView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/dump/DumpManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/statusbar/KeyguardSecIndicationController;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/systemui/lockstar/PluginLockStarManager;Landroid/os/Vibrator;)V
    .locals 15

    move-object v13, p0

    move-object/from16 v14, p13

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p17

    .line 134
    invoke-direct/range {v0 .. v12}, Lcom/android/keyguard/LockIconViewController;-><init>(Lcom/android/keyguard/LockIconView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/dump/DumpManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Vibrator;)V

    .line 77
    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v13, Lcom/android/keyguard/SecLockIconViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, v13, Lcom/android/keyguard/SecLockIconViewController;->mIsDefaultLockViewMode:Z

    .line 98
    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/SecLockIconViewController$1;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v13, Lcom/android/keyguard/SecLockIconViewController;->mLockStarCallback:Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;

    .line 324
    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/SecLockIconViewController$2;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v13, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 368
    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/SecLockIconViewController$3;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v13, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    .line 379
    new-instance v0, Lcom/android/keyguard/SecLockIconViewController$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/SecLockIconViewController$4;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    iput-object v0, v13, Lcom/android/keyguard/SecLockIconViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->lock_unlock:I

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v13, Lcom/android/keyguard/LockIconViewController;->mUnlockIcon:Landroid/graphics/drawable/Drawable;

    .line 141
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->lock_ic_lock_mtrl_00:I

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v13, Lcom/android/keyguard/LockIconViewController;->mLockIcon:Landroid/graphics/drawable/Drawable;

    .line 142
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->lock_smartlock_btn_lock_normal_mtrl:I

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v13, Lcom/android/keyguard/SecLockIconViewController;->mSmartLockIcon:Landroid/graphics/drawable/Drawable;

    .line 143
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->kg_smart_lock_content_description:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/android/keyguard/SecLockIconViewController;->mSmartLockedLabel:Ljava/lang/CharSequence;

    move-object/from16 v0, p12

    .line 145
    iput-object v0, v13, Lcom/android/keyguard/SecLockIconViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 146
    iput-object v14, v13, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardSecIndicationController:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 147
    invoke-virtual {v14, p0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->setLockIconViewController(Lcom/android/keyguard/SecLockIconViewController;)V

    move-object/from16 v0, p14

    .line 150
    invoke-interface {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    move-object/from16 v0, p15

    .line 153
    iput-object v0, v13, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    move-object/from16 v0, p16

    .line 154
    iput-object v0, v13, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    return-void
.end method

.method private acceptModifier(Z)V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getPluginLockStar()Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 292
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 293
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/SecLockIconView;->getLockIcon()Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object v1

    const-string v2, "lockIconVisibility"

    .line 295
    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mVisibilityModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    const-string v2, "lockIconAlpha"

    .line 296
    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mAlphaModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    const-string v2, "lockIconColor"

    .line 297
    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mColorModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    const-string v2, "lockIconDrawable"

    .line 298
    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v2

    iput-object v2, p0, Lcom/android/keyguard/SecLockIconViewController;->mLockIconDrawableModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    const-string/jumbo v2, "unlockIconDrawable"

    .line 299
    invoke-interface {v0, v2}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mUnlockIconDrawableModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 301
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mVisibilityModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    if-eqz v0, :cond_0

    .line 302
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mAlphaModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 305
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 306
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mAlphaModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 308
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mColorModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    if-eqz v0, :cond_2

    .line 309
    invoke-virtual {v1}, Lcom/android/systemui/widget/SystemUIImageView;->invalidateImage()V

    .line 310
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mColorModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    if-eqz p1, :cond_3

    .line 313
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mLockIconDrawableModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    if-eqz p0, :cond_4

    .line 314
    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 317
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mUnlockIconDrawableModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    if-eqz p0, :cond_4

    .line 318
    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/SecLockIconViewController;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/SecLockIconViewController;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/SecLockIconViewController;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/SecLockIconViewController;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mRunningFace:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/keyguard/SecLockIconViewController;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mRunningFace:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/keyguard/SecLockIconViewController;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/SecLockIconViewController;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/SecLockIconViewController;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mCurrentOrientation:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/keyguard/SecLockIconViewController;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mCurrentOrientation:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/keyguard/SecLockIconViewController;)Landroid/view/View;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private handleSmartLockIconLongClick()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onLockIconPressed()V

    .line 246
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$new$0(Landroid/net/Uri;)V
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/SecLockIconView;

    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/SecLockIconView;->setOneHandModeEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$updateVisibility$1(Landroid/view/View;)Z
    .locals 0

    .line 202
    invoke-direct {p0}, Lcom/android/keyguard/SecLockIconViewController;->handleSmartLockIconLongClick()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public initShowingBiometricErrorAnimation()V
    .locals 1

    .line 255
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v0, p0

    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    check-cast p0, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconView;->getLockIcon()Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/SecLockIconView;->initBiometricErrorIndicationAnimationValue(Lcom/android/systemui/widget/SystemUIImageView;)V

    return-void
.end method

.method public onUiInfoRequested(Z)Landroid/os/Bundle;
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->shouldShowLockIcon()Z

    move-result p0

    .line 274
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    :goto_0
    const-string v0, "lock_icon_visibility"

    .line 275
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p1
.end method

.method protected onViewAttached()V
    .locals 5

    .line 160
    invoke-super {p0}, Lcom/android/keyguard/LockIconViewController;->onViewAttached()V

    .line 162
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 164
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 165
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "any_screen_running"

    .line 166
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 168
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mLockStarCallback:Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;

    const-string v2, "SecLockIconViewController"

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)Z

    .line 171
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility()V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 176
    invoke-super {p0}, Lcom/android/keyguard/LockIconViewController;->onViewDetached()V

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 180
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 181
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/SecLockIconViewController;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 183
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    const-string v0, "SecLockIconViewController"

    invoke-virtual {p0, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->unregisterCallback(Ljava/lang/String;)Z

    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 2

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewModeChanged mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockIconViewController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 264
    :goto_0
    iget-boolean v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsDefaultLockViewMode:Z

    if-eq v0, p1, :cond_1

    .line 265
    iput-boolean p1, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsDefaultLockViewMode:Z

    .line 266
    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->updateVisibility()V

    :cond_1
    return-void
.end method

.method public shouldShowLockIcon()Z
    .locals 4

    .line 281
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mIsDefaultLockViewMode:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 283
    iget-object v3, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    invoke-interface {v3}, Lcom/android/systemui/pluginlock/PluginLockData;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 284
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockData;->getVisibility(I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public startShowingBiometricErrorAnimation(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 1

    .line 251
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v0, p0

    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    check-cast p0, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconView;->getLockIcon()Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getX()F

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/android/keyguard/SecLockIconView;->showBiometricErrorAnimation(Lcom/android/systemui/widget/SystemUIImageView;F)V

    return-void
.end method

.method protected updateVisibility()V
    .locals 8

    .line 188
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mIsKeyguardShowing:Z

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/keyguard/SecLockIconViewController;->shouldShowLockIcon()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 194
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/LockIconViewController;->isLockScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    .line 195
    iget-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mCanDismissLockScreen:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/LockIconViewController;->isLockScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    .line 196
    iget-object v0, p0, Lcom/android/keyguard/LockIconViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 197
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 196
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    invoke-virtual {p0}, Lcom/android/keyguard/LockIconViewController;->isLockScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    .line 198
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v4}, Lcom/android/keyguard/SecLockIconView;->getLockIcon()Lcom/android/systemui/widget/SystemUIImageView;

    move-result-object v4

    .line 200
    iget-object v5, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v5, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    .line 202
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    new-instance v7, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0}, Lcom/android/keyguard/SecLockIconViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/SecLockIconViewController;)V

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    iget-object v7, p0, Lcom/android/keyguard/SecLockIconViewController;->mSmartLockIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Lcom/android/keyguard/SecLockIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 205
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    iget-object v7, p0, Lcom/android/keyguard/SecLockIconViewController;->mSmartLockedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "top"

    .line 206
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    sget v1, Lcom/android/systemui/R$drawable;->whitebg_smartlock_btn_bg_ripple:I

    goto :goto_3

    :cond_4
    sget v1, Lcom/android/systemui/R$drawable;->smartlock_btn_bg_ripple:I

    .line 206
    :goto_3
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_4

    .line 208
    :cond_5
    iget-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mShowUnlockIcon:Z

    if-eqz v7, :cond_7

    .line 209
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    iget-object v7, p0, Lcom/android/keyguard/LockIconViewController;->mUnlockIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Lcom/android/keyguard/SecLockIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 211
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    iget-object v7, p0, Lcom/android/keyguard/LockIconViewController;->mUnlockedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/android/keyguard/LockIconViewController;->mUnlockIcon:Landroid/graphics/drawable/Drawable;

    instance-of v7, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_6

    .line 213
    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 214
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 217
    :cond_6
    invoke-direct {p0, v2}, Lcom/android/keyguard/SecLockIconViewController;->acceptModifier(Z)V

    goto :goto_4

    .line 219
    :cond_7
    iget-boolean v7, p0, Lcom/android/keyguard/LockIconViewController;->mShowLockIcon:Z

    if-eqz v7, :cond_9

    .line 220
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    iget-object v7, p0, Lcom/android/keyguard/LockIconViewController;->mLockIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Lcom/android/keyguard/SecLockIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 222
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    iget-object v7, p0, Lcom/android/keyguard/LockIconViewController;->mLockedLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v1}, Lcom/android/keyguard/SecLockIconView;->isScanningFaceAnimationAllowed()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 224
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/SecLockIconView;->showScanningFaceAnimation(Lcom/android/systemui/widget/SystemUIImageView;)V

    .line 227
    :cond_8
    invoke-direct {p0, v3}, Lcom/android/keyguard/SecLockIconViewController;->acceptModifier(Z)V

    goto :goto_4

    .line 230
    :cond_9
    iget-object v7, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v7, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v7, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 231
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v1, v6}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 233
    :goto_4
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    .line 234
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 235
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/SecLockIconView;

    check-cast v1, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_a
    if-nez v0, :cond_b

    .line 237
    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 238
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 240
    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardSecIndicationController:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/SecLockIconView;

    .line 241
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_c

    move v2, v3

    .line 240
    :cond_c
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->updateBiometricTextVisibility(Z)V

    return-void

    .line 189
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 190
    iget-object p0, p0, Lcom/android/keyguard/SecLockIconViewController;->mKeyguardSecIndicationController:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->updateBiometricTextVisibility(Z)V

    return-void
.end method
