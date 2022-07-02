.class public Lcom/android/systemui/statusbar/phone/LightBarController;
.super Ljava/lang/Object;
.source "LightBarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field private static final NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD:F


# instance fields
.field private EXTENSION_APPEARANCE_GRAY_STATUS_BARS:I

.field private mAppearance:I

.field private mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

.field private final mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final mDarkModeColor:Landroid/graphics/Color;

.field private mDirectReplying:Z

.field private mForceDarkForScrim:Z

.field private mHasLightNavigationBar:Z

.field private mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field private mNavbarColorManagedByIme:Z

.field private mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

.field private mNavigationBarMode:I

.field private mNavigationLight:Z

.field private mNavigationMode:I

.field private mPanelExpanded:Z

.field private mPanelHasWhiteBg:Z

.field private mQsCustomizing:Z

.field private mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

.field private mScrimAlpha:F

.field private mStatusAppearance:I

.field private mStatusAppearanceChanged:Z

.field private final mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

.field private mStatusBarMode:I


# direct methods
.method public static synthetic $r8$lambda$encPrnoQF0SB715TtCgRU0cHgig(Lcom/android/systemui/statusbar/phone/LightBarController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarController;->lambda$new$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nZy9CW8Hrk8xwMG8xpOJuqZz9NY(Lcom/android/systemui/statusbar/phone/LightBarController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->lambda$onStatusBarModeChanged$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 63
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    if-eqz v0, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_0
    const v0, 0x3dcccccd    # 0.1f

    :goto_0
    sput v0, Lcom/android/systemui/statusbar/phone/LightBarController;->NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/plugins/DarkIconDispatcher;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/navigationbar/NavigationModeController;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/android/internal/view/AppearanceRegion;

    .line 71
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 79
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelExpanded:Z

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelHasWhiteBg:Z

    const/4 v0, 0x0

    .line 83
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlpha:F

    const/16 v0, 0x20

    .line 114
    iput v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->EXTENSION_APPEARANCE_GRAY_STATUS_BARS:I

    .line 122
    sget v0, Lcom/android/systemui/R$color;->dark_mode_icon_color_single_tone:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDarkModeColor:Landroid/graphics/Color;

    .line 123
    check-cast p3, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    .line 125
    new-instance p1, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    .line 127
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_0

    .line 128
    const-class p1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 130
    :cond_0
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 131
    invoke-interface {p4, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 132
    new-instance p1, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    invoke-virtual {p5, p1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationMode:I

    return-void
.end method

.method private animateChange()Z
    .locals 3

    .line 295
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 298
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method private hasPanelWhiteBGColor(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z
    .locals 7

    .line 422
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result p0

    shr-int/lit8 p1, p0, 0x10

    and-int/lit16 p1, p1, 0xff

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 p0, p0, 0xff

    mul-int/2addr p1, p1

    int-to-double v1, p1

    const-wide v3, 0x3fced916872b020cL    # 0.241

    mul-double/2addr v1, v3

    mul-int/2addr v0, v0

    int-to-double v3, v0

    const-wide v5, 0x3fe61cac083126e9L    # 0.691

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    mul-int/2addr p0, p0

    int-to-double p0, p0

    const-wide v3, 0x3fb16872b020c49cL    # 0.068

    mul-double/2addr p0, v3

    add-double/2addr v1, p0

    .line 426
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-int p0, p0

    const/16 p1, 0x82

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isGray(III)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    and-int/2addr p0, p2

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    move p0, v0

    :goto_2
    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private static isLight(III)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v1

    :goto_1
    and-int/2addr p0, p2

    if-eqz p0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    move p0, v0

    :goto_2
    if-eqz p1, :cond_3

    if-eqz p0, :cond_3

    move v0, v1

    :cond_3
    return v0
.end method

.method private synthetic lambda$new$0(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationMode:I

    return-void
.end method

.method private synthetic lambda$onStatusBarModeChanged$1()V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateStatus()V

    return-void
.end method

.method private updateStatus()V
    .locals 11

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v0, v0

    const/4 v7, 0x0

    const/4 v1, -0x1

    move v9, v1

    move v1, v7

    move v8, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 311
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/view/AppearanceRegion;->getAppearance()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v8, v8, 0x1

    move v9, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 318
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 319
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->shouldApplyGrayColor(I)Z

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 320
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->applyGrayOnHomeIndicatorIcons(Z)V

    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v1

    invoke-virtual {v1, v10, v7}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 323
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    const-string v2, "GRAY icon"

    move v3, v8

    move v4, v0

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->updateStatusModel(Ljava/lang/String;IIII)V

    :cond_2
    const/4 v1, 0x0

    if-ne v8, v0, :cond_4

    .line 330
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 331
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->applyGrayOnHomeIndicatorIcons(Z)V

    .line 333
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 334
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v2

    invoke-virtual {v1, v10, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 336
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    const-string v2, "BLACK icon"

    move v3, v8

    move v4, v0

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->updateStatusModel(Ljava/lang/String;IIII)V

    .line 338
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->setLightStatusBarFlag(Z)V

    goto :goto_1

    :cond_4
    if-nez v8, :cond_6

    .line 344
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 345
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->applyGrayOnHomeIndicatorIcons(Z)V

    .line 348
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 350
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v1

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v2

    .line 350
    invoke-virtual {v1, v7, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 353
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    const-string v2, "WHITE icon"

    move v3, v8

    move v4, v0

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->updateStatusModel(Ljava/lang/String;IIII)V

    .line 355
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->setLightStatusBarFlag(Z)V

    goto :goto_1

    .line 361
    :cond_6
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 362
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->applyGrayOnHomeIndicatorIcons(Z)V

    .line 364
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v2, v2, v9

    .line 365
    invoke-virtual {v2}, Lcom/android/internal/view/AppearanceRegion;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 364
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/DarkIconDispatcher;->setIconsDarkArea(Landroid/graphics/Rect;)V

    .line 366
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result v2

    invoke-virtual {v1, v10, v2}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    .line 368
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    const-string v2, "BLACK magic"

    move v3, v8

    move v4, v0

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->updateStatusModel(Ljava/lang/String;IIII)V

    .line 370
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    invoke-virtual {p0, v10}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->setLightStatusBarFlag(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    const-string v0, "LightBarController: "

    .line 438
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " mAppearance="

    .line 439
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v0, Landroid/view/InsetsFlags;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    const-string v2, "appearance"

    invoke-static {v0, v2, v1}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 443
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/internal/view/AppearanceRegion;->getAppearance()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    const/16 v4, 0x8

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v2

    const-string v3, " stack #"

    .line 445
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/android/internal/view/AppearanceRegion;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, " isLight="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v0, " mNavigationLight="

    .line 449
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mHasLightNavigationBar="

    .line 450
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mStatusBarMode="

    .line 452
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " mNavigationBarMode="

    .line 453
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, " mForceDarkForScrim="

    .line 455
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mQsCustomizing="

    .line 456
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, " mDirectReplying="

    .line 457
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, " mNavbarColorManagedByIme="

    .line 458
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 460
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarIconController:Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;

    .line 463
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/SysuiDarkIconDispatcher;->getTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, " StatusBarTransitionsController:"

    .line 465
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_2

    const-string v0, " NavigationBarTransitionsController:"

    .line 471
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 473
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 476
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    if-eqz p0, :cond_3

    .line 477
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->getDumpString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public getFontColorOfLockIndicator()I
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->getFontColorOfLockIndicator()I

    move-result p0

    return p0
.end method

.method public needDarkFontOfLockIndicator()Z
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->needDarkFontOfLockIndicator()Z

    move-result p0

    return p0
.end method

.method public onNavigationBarAppearanceChanged(IZIZ)V
    .locals 8

    .line 180
    const-class v0, Ljava/lang/Boolean;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    xor-int/2addr v1, p1

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    if-eqz p2, :cond_9

    .line 183
    :cond_0
    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 184
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v4, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_NAVBAR_LIGHT:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v5}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 185
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v5

    .line 184
    invoke-interface {v3, p0, v4, v5, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v1

    .line 187
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 188
    invoke-static {p1, p3, v2}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v5

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz v2, :cond_6

    .line 190
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    if-nez v2, :cond_5

    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    if-nez v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mQsCustomizing:Z

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    move v5, v1

    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    if-eqz p2, :cond_7

    .line 195
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelExpanded:Z

    if-eqz p2, :cond_7

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    if-nez p2, :cond_7

    .line 196
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelHasWhiteBg:Z

    or-int/2addr p2, v3

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    .line 201
    :cond_7
    sget-boolean p2, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p2, :cond_8

    .line 202
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v2, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_REGION_SAMPLING_ENABLED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v5, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 203
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5, v6}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v3

    .line 202
    invoke-interface {v1, p0, v2, v3, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_8
    if-eqz p2, :cond_9

    if-nez v1, :cond_9

    .line 205
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    if-eq p2, v4, :cond_9

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    .line 210
    :cond_9
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    .line 211
    iput p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    .line 212
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    return-void
.end method

.method public onNavigationBarModeChanged(I)V
    .locals 2

    .line 216
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    const/16 v1, 0x10

    invoke-static {v0, p1, v1}, Lcom/android/systemui/statusbar/phone/LightBarController;->isLight(III)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    .line 217
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_AOSP_BUG_FIX:Z

    if-eqz v0, :cond_0

    .line 219
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    :cond_0
    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    .line 433
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    return-void
.end method

.method onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZIZ)V
    .locals 10

    .line 149
    array-length v0, p1

    .line 150
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    move v9, v1

    :goto_1
    if-ge v2, v0, :cond_1

    if-nez v9, :cond_1

    .line 152
    aget-object v1, p1, v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Lcom/android/internal/view/AppearanceRegion;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    or-int/2addr v9, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-nez v9, :cond_2

    if-nez p2, :cond_2

    .line 154
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusAppearanceChanged:Z

    if-eqz v0, :cond_3

    .line 157
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mSamsungLightBarControlHelper:Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;

    move-object v5, p1

    move v6, p2

    move v7, p3

    move v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/SamsungLightBarControlHelper;->onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZIZZ)V

    .line 160
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 161
    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarModeChanged(I)V

    .line 163
    :cond_3
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    return-void
.end method

.method onStatusBarModeChanged(I)V
    .locals 1

    .line 167
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    .line 172
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/LightBarController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reevaluate()V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusBarMode:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController;->onStatusBarAppearanceChanged([Lcom/android/internal/view/AppearanceRegion;ZIZ)V

    .line 228
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearance:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavbarColorManagedByIme:Z

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/android/systemui/statusbar/phone/LightBarController;->onNavigationBarAppearanceChanged(IZIZ)V

    return-void
.end method

.method public setBiometricUnlockController(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-void
.end method

.method public setDirectReplying(Z)V
    .locals 1

    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 244
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mDirectReplying:Z

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    return-void
.end method

.method public setNavigationBar(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    .line 139
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    return-void
.end method

.method public setScrimState(Lcom/android/systemui/statusbar/phone/ScrimState;FLcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 10

    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelExpanded:Z

    .line 252
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelHasWhiteBg:Z

    .line 253
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_LIGHTBAR:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 254
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavBarStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v6, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_NAVBAR_OPAQUE:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v7, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v7}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v8, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 255
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v7, v8, v9}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v7

    const-class v8, Ljava/lang/Boolean;

    .line 254
    invoke-interface {v5, p0, v6, v7, v8}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 256
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/phone/LightBarController;->hasPanelWhiteBGColor(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelHasWhiteBg:Z

    .line 257
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mScrimAlpha:F

    .line 258
    sget-object v6, Lcom/android/systemui/statusbar/phone/ScrimState;->UNLOCKED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v6, :cond_0

    sget v6, Lcom/android/systemui/statusbar/phone/LightBarController;->NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD:F

    cmpl-float v6, p2, v6

    if-ltz v6, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelExpanded:Z

    goto :goto_1

    :cond_1
    move v5, v4

    .line 261
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    .line 265
    sget-object v7, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v7, :cond_4

    sget-object v7, Lcom/android/systemui/statusbar/phone/ScrimState;->BOUNCER_SCRIMMED:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v7, :cond_4

    sget p1, Lcom/android/systemui/statusbar/phone/LightBarController;->NAV_BAR_INVERSION_SCRIM_ALPHA_THRESHOLD:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_4

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_2

    goto :goto_2

    .line 268
    :cond_2
    invoke-virtual {p3}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->supportsDarkText()Z

    move-result p1

    if-nez p1, :cond_4

    :goto_2
    if-eqz v2, :cond_3

    if-nez v5, :cond_4

    :cond_3
    move p1, v3

    goto :goto_3

    :cond_4
    move p1, v4

    :goto_3
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mForceDarkForScrim:Z

    if-eqz v2, :cond_9

    .line 273
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelExpanded:Z

    if-eq v0, p2, :cond_5

    move p2, v3

    goto :goto_4

    :cond_5
    move p2, v4

    .line 275
    :goto_4
    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mPanelHasWhiteBg:Z

    if-eq p3, v1, :cond_6

    move p3, v3

    goto :goto_5

    :cond_6
    move p3, v4

    .line 276
    :goto_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz v0, :cond_7

    if-eq p1, v6, :cond_7

    goto :goto_6

    :cond_7
    move v3, v4

    :goto_6
    if-nez p2, :cond_8

    if-nez p3, :cond_8

    if-eqz v3, :cond_a

    .line 278
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    goto :goto_7

    .line 281
    :cond_9
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mHasLightNavigationBar:Z

    if-eqz p2, :cond_a

    if-eq p1, v6, :cond_a

    .line 282
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    :cond_a
    :goto_7
    return-void
.end method

.method shouldApplyGrayColor(I)Z
    .locals 1

    .line 398
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusAppearance:I

    iget p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->EXTENSION_APPEARANCE_GRAY_STATUS_BARS:I

    invoke-static {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->isGray(III)Z

    move-result p0

    if-eqz p0, :cond_0

    const-class p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 399
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateNavigation()V
    .locals 2

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationMode:I

    .line 415
    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 416
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarController:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationLight:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->animateChange()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconsDark(ZZ)V

    :cond_1
    return-void
.end method

.method updateStatusBarAppearance(I)V
    .locals 1

    .line 377
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusAppearance:I

    if-eq v0, p1, :cond_0

    .line 378
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusAppearance:I

    const/4 p1, 0x1

    .line 379
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusAppearanceChanged:Z

    .line 380
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 381
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusAppearance:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->updateStatusBarAppearance(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 384
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mStatusAppearanceChanged:Z

    :cond_1
    :goto_0
    return-void
.end method
