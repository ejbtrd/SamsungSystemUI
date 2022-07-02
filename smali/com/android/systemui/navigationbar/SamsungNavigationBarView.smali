.class public Lcom/android/systemui/navigationbar/SamsungNavigationBarView;
.super Lcom/android/systemui/navigationbar/NavigationBarView;
.source "SamsungNavigationBarView.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;


# instance fields
.field private mBackAltIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

.field private mCurrentRemoteView:Landroid/view/View;

.field private mGestureHintGroup:Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

.field private mInScreenPinning:Z

.field private mInteractorManager:Lcom/android/systemui/navigationbar/NavBarInteractorManager;

.field private mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

.field private mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

.field private mMarqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

.field private mNavBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

.field private mNotifyHideKeyboard:Z

.field private mOneHandModeUtil:Lcom/android/systemui/navigationbar/util/OneHandModeUtil;

.field private mPluginNavBar:Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShowHideKeyboard:Z

.field private mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 82
    iput-object p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    .line 92
    sget v0, Lcom/android/systemui/R$color;->navbar_icon_color_light:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    .line 93
    sget v0, Lcom/android/systemui/R$color;->navbar_icon_color_dark:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    .line 94
    const-class v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    .line 95
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mWindowManager:Landroid/view/WindowManager;

    .line 96
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 97
    new-instance v0, Lcom/android/systemui/basic/util/LogWrapper;

    sget-object v1, Lcom/android/systemui/basic/util/ModuleType;->NAVBAR:Lcom/android/systemui/basic/util/ModuleType;

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/basic/util/LogWrapper;-><init>(Lcom/android/systemui/basic/util/ModuleType;Lcom/android/systemui/log/SamsungServiceLogger;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 98
    new-instance p2, Lcom/android/systemui/navigationbar/NavBarTipPopup;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mWindowManager:Landroid/view/WindowManager;

    invoke-direct {p2, p1, v1, v0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;-><init>(Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/basic/util/LogWrapper;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mNavBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    .line 99
    new-instance p2, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;-><init>(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawableProvider;Lcom/android/systemui/navigationbar/store/NavBarStore;Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    .line 100
    new-instance p2, Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    invoke-direct {p2}, Lcom/android/systemui/navigationbar/util/MarqueeLogic;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    .line 101
    new-instance p2, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;

    new-instance v2, Lcom/android/systemui/navigationbar/util/BasicRuneFeatureChecker;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/util/BasicRuneFeatureChecker;-><init>()V

    new-instance v3, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getButtonDispatchers()Landroid/util/SparseArray;

    move-result-object v0

    invoke-direct {v3, p1, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;-><init>(Landroid/content/Context;Landroid/util/SparseArray;)V

    iget-object v4, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    new-instance v5, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    invoke-direct {v5, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAdapterImpl;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/android/systemui/basic/util/LogWrapper;)V

    new-instance v6, Lcom/android/systemui/navigationbar/TaskStackAdapter;

    invoke-direct {v6}, Lcom/android/systemui/navigationbar/TaskStackAdapter;-><init>()V

    new-instance v7, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;

    invoke-direct {v7}, Lcom/android/systemui/navigationbar/ActivityOptionsWrapperImpl;-><init>()V

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;-><init>(Lcom/android/systemui/navigationbar/SamsungNavigationBarView;Lcom/samsung/systemui/splugins/navigationbar/FeatureChecker;Lcom/android/systemui/navigationbar/buttons/ButtonDispatcherProxy;Lcom/android/systemui/navigationbar/store/NavBarStore;Lcom/samsung/systemui/splugins/navigationbar/NavBarStoreAdapter;Lcom/android/systemui/navigationbar/TaskStackAdapter;Lcom/samsung/systemui/splugins/navigationbar/ActivityOptionsWrapper;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mPluginNavBar:Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;

    .line 105
    new-instance p2, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p2, v0}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;-><init>(Lcom/android/systemui/util/SettingsHelper;)V

    iput-object p2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mOneHandModeUtil:Lcom/android/systemui/navigationbar/util/OneHandModeUtil;

    .line 107
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 110
    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    invoke-virtual {p2, v0}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->setKeyButtonMapper(Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->initButtonDispatcherGroup(Landroid/content/Context;)V

    .line 112
    new-instance p1, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-direct {p1, p2}, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;-><init>(Landroid/util/SparseArray;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mGestureHintGroup:Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

    .line 113
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->isScreenPinningActive()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mInScreenPinning:Z

    return-void
.end method

.method private getHintView()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;
    .locals 0

    .line 483
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mGestureHintGroup:Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->getHintView()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    return-object p0
.end method

.method private getSamplingBounds(IIIIIIZLandroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 0

    if-nez p7, :cond_0

    .line 560
    new-instance p2, Landroid/graphics/Rect;

    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavColorSampleMargin:I

    sub-int p3, p1, p0

    iget p5, p8, Landroid/graphics/Point;->y:I

    sub-int p6, p5, p6

    add-int/2addr p1, p4

    add-int/2addr p1, p0

    invoke-direct {p2, p3, p6, p1, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2

    :cond_0
    const/4 p7, 0x1

    if-ne p3, p7, :cond_1

    .line 566
    iget p1, p8, Landroid/graphics/Point;->x:I

    sub-int p3, p1, p6

    .line 568
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavColorSampleMargin:I

    sub-int p4, p2, p0

    add-int/2addr p2, p5

    add-int/2addr p2, p0

    move p6, p1

    goto :goto_0

    :cond_1
    const/4 p7, 0x3

    if-ne p3, p7, :cond_2

    const/4 p3, 0x0

    .line 573
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavColorSampleMargin:I

    sub-int p4, p2, p0

    add-int/2addr p2, p5

    add-int/2addr p2, p0

    goto :goto_0

    .line 576
    :cond_2
    iget p2, p8, Landroid/graphics/Point;->y:I

    sub-int p3, p2, p6

    .line 578
    iget p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavColorSampleMargin:I

    sub-int p5, p1, p0

    add-int/2addr p1, p4

    add-int p6, p1, p0

    move p4, p3

    move p3, p5

    .line 582
    :goto_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, p6, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method private getSamplingBoundsInOneHand()Landroid/graphics/Rect;
    .locals 1

    .line 554
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mOneHandModeUtil:Lcom/android/systemui/navigationbar/util/OneHandModeUtil;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->getRegionSamplingBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method private initButtonDispatcherGroup(Landroid/content/Context;)V
    .locals 7

    .line 452
    new-instance p1, Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    sget v0, Lcom/android/systemui/R$id;->ime_switcher:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_IME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(ILandroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconType;)V

    .line 453
    new-instance v1, Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    sget v2, Lcom/android/systemui/R$id;->accessibility_button:I

    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    sget-object v4, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_A11Y:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/navigationbar/buttons/ContextualButton;-><init>(ILandroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/IconType;)V

    .line 455
    new-instance v3, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    sget v4, Lcom/android/systemui/R$id;->rotate_suggestion:I

    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    sget v6, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_rotate_button:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/systemui/navigationbar/buttons/RotationContextButton;-><init>(ILandroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationContextButton:Lcom/android/systemui/navigationbar/buttons/RotationContextButton;

    .line 458
    iget v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v3}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v3

    .line 462
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->clearButton()V

    if-eqz v3, :cond_0

    .line 464
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {v3, v1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 465
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {v3, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    goto :goto_0

    .line 467
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {v3, p1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 468
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {v3, v1}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->addButton(Lcom/android/systemui/navigationbar/buttons/ContextualButton;)V

    .line 471
    :goto_0
    new-instance v3, Lcom/android/systemui/navigationbar/RotationButtonController;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mLightIconColor:I

    iget v6, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDarkIconColor:I

    invoke-direct {v3, v4, v5, v6}, Lcom/android/systemui/navigationbar/RotationButtonController;-><init>(Landroid/content/Context;II)V

    iput-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRotationButtonController:Lcom/android/systemui/navigationbar/RotationButtonController;

    .line 473
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRotationButton()V

    .line 475
    iget-object v3, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {p1, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->hint_left:I

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget v0, Lcom/android/systemui/R$id;->hint_center:I

    new-instance v1, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-direct {v1, v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    sget p1, Lcom/android/systemui/R$id;->hint_right:I

    new-instance v0, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    invoke-direct {v0, p1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private isScreenReaderEnabled()Z
    .locals 1

    .line 659
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 660
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 661
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->semIsScreenReaderEnabled()Z

    move-result p0

    return p0
.end method

.method private notifyShowHideKeyboard(Z)V
    .locals 1

    .line 287
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mNotifyHideKeyboard:Z

    if-eq v0, p1, :cond_0

    .line 289
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mNotifyHideKeyboard:Z

    .line 291
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setShowHideKeyboardButton(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public forceSetBackGesture(Z)V
    .locals 0

    .line 719
    sput-boolean p1, Lcom/android/systemui/shared/system/QuickStepContract;->SYSUI_FORCE_SET_BACK_GESTURE_BY_SPLUGIN:Z

    return-void
.end method

.method protected getBackIconWithAlt(Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 0

    if-eqz p1, :cond_0

    .line 222
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mBackAltIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    :goto_0
    return-object p0
.end method

.method public getDefaultColorProvider()Ljava/lang/Object;
    .locals 1

    .line 676
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getProvider(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;
    .locals 0

    .line 681
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getDefaultIconTheme()Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultLayoutProviderContainer()Ljava/lang/Object;
    .locals 1

    .line 708
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->getProvider(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getGestureHintDrawable(Landroid/content/Context;III)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;
    .locals 0

    .line 399
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-static {p1, p0, p2, p4}, Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getGestureHintDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;
    .locals 0

    .line 404
    invoke-static {p1, p2, p3, p4}, Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getHintGroup()Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mGestureHintGroup:Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

    return-object p0
.end method

.method public getKeyButtonDrawable(Landroid/content/Context;II)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 0

    .line 350
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p1, p0, p2, p3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getKeyButtonDrawable(Landroid/content/Context;IZ)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 0

    .line 355
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p2, 0x0

    invoke-static {p1, p0, p3, p2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZZ)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 0

    const/4 p0, 0x0

    .line 360
    invoke-static {p1, p2, p3, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 0

    const/4 p0, 0x0

    .line 365
    invoke-static {p1, p2, p3, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZZ)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getOpenThemeTintDrawable(Landroid/content/Context;I)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 1

    .line 390
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 391
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 392
    sget v0, Lcom/android/systemui/R$color;->navbar_icon_color_light:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 393
    sget v0, Lcom/android/systemui/R$color;->navbar_icon_color_dark:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/4 v0, 0x0

    .line 394
    invoke-static {p1, p0, p2, v0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getRtlKeyButtonDrawable(Landroid/content/Context;II)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 0

    .line 370
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p0, p2, p3}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getRtlKeyButtonDrawable(Landroid/content/Context;IZ)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 0

    .line 375
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p2, 0x1

    invoke-static {p1, p0, p3, p2}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZZ)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getRtlKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 0

    const/4 p0, 0x1

    .line 380
    invoke-static {p1, p2, p3, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getRtlKeyButtonDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;
    .locals 0

    const/4 p0, 0x1

    .line 385
    invoke-static {p1, p2, p3, p0}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->create(Landroid/content/Context;Landroid/graphics/drawable/Drawable;ZZ)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p0

    return-object p0
.end method

.method public getSecondaryHomeHandleDrawable(I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;
    .locals 0

    .line 655
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getSecondaryHomeHandleDrawable(I)Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object p0

    return-object p0
.end method

.method protected isLongEdgeCutout(I)Z
    .locals 1

    .line 725
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->samsung_minimum_size_for_overlapping_with_cutout_as_default:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    if-lez p1, :cond_0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public marqueeNavigationBarIcon(II)V
    .locals 9

    .line 416
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->reorient()V

    return-void

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->update(F)V

    .line 427
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->getLeftShift(Z)I

    move-result v0

    .line 428
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->getTopShift(Z)I

    move-result v1

    .line 430
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v3, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_NAVBAR_CAN_MOVE_STATE:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v5, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 431
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v4

    .line 430
    invoke-interface {v2, p0, v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 432
    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mMarqueeLogic:Lcom/android/systemui/navigationbar/util/MarqueeLogic;

    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/navigationbar/util/MarqueeLogic;->getSidePadding(II)I

    move-result p1

    const/4 p2, 0x0

    move v3, p2

    .line 433
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 434
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mButtonDispatchers:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    if-nez v2, :cond_1

    .line 436
    invoke-virtual {v4, v0, v1, p2, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setPadding(IIII)V

    goto :goto_4

    .line 438
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    invoke-virtual {v5, v4}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->contains(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 441
    iget v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    add-int v6, p1, v1

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_1
    if-nez v5, :cond_3

    add-int/lit8 v7, p1, 0x0

    goto :goto_2

    :cond_3
    move v7, p2

    :goto_2
    const/4 v8, 0x3

    if-ne v5, v8, :cond_4

    add-int/lit8 v5, p1, 0x0

    goto :goto_3

    :cond_4
    move v5, p2

    .line 439
    :goto_3
    invoke-virtual {v4, v0, v6, v7, v5}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setPadding(IIII)V

    goto :goto_4

    .line 445
    :cond_5
    invoke-virtual {v4, v0, v1, p2, p2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setPadding(IIII)V

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method

.method public needTouchableInsetsFrame()Z
    .locals 5

    .line 588
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_NAVBAR_BUTTON_FORCED_VISIBLE:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 589
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 588
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 590
    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mImeVisible:Z

    if-eqz v1, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mShowHideKeyboard:Z

    if-nez p0, :cond_2

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public needTouchableInsetsFrameExceptPadding()Z
    .locals 5

    .line 597
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_PINNED_EDGE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEdgePinMode()Z

    move-result v0

    .line 599
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v3, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_SUPPORT_PHONE_LAYOUT_PROVIDER:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStore;->isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z

    move-result v2

    .line 600
    iget-object v3, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v4, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_SETUPWIZARD_STYLE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStore;->isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z

    move-result v3

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->needTouchableInsetsFrame()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .line 144
    invoke-super {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->onAttachedToWindow()V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mInteractorManager:Lcom/android/systemui/navigationbar/NavBarInteractorManager;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Lcom/android/systemui/navigationbar/NavBarInteractorManager;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mPluginNavBar:Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/navigationbar/NavBarInteractorManager;-><init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/navigationbar/ExtendableNavigationBar;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mInteractorManager:Lcom/android/systemui/navigationbar/NavBarInteractorManager;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DISPLAY_ID:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_VIEW:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 150
    invoke-virtual {v2, v3, p0}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_TRANSITIONS:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v2

    .line 152
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 148
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    .line 154
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_START_NAVBAR_REMOTEVIEW_MANAGER_SERVICE:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    .line 156
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 155
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .line 162
    invoke-super {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->onDetachedFromWindow()V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mInteractorManager:Lcom/android/systemui/navigationbar/NavBarInteractorManager;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavBarInteractorManager;->stop()V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mInteractorManager:Lcom/android/systemui/navigationbar/NavBarInteractorManager;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_DETACHED_TO_WINDOW:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DISPLAY_ID:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 167
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method protected onImeVisibilityChanged(Z)V
    .locals 0

    .line 504
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onImeVisibilityChanged(Z)V

    if-eqz p1, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->showHideKeyboardButton()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mShowHideKeyboard:Z

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 173
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v0

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 177
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 611
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/navigationbar/NavigationBarView;->onLayout(ZIIII)V

    .line 612
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mNavBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->setNavbarWidth(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 617
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 618
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 620
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v3, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_NAVBAR_CAN_MOVE_STATE:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v5, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 621
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v4

    .line 620
    invoke-interface {v2, p0, v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 622
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result v3

    .line 623
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result v4

    .line 625
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050209

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 627
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1050204

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    .line 629
    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    if-eqz v2, :cond_2

    const/4 v8, 0x2

    if-ne v2, v8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 634
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    new-instance v3, Landroid/graphics/Rect;

    sub-int v4, v0, v5

    invoke-direct {v3, v4, v7, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->setBackgroundFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne v2, v0, :cond_5

    .line 636
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v7, v7, v5, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->setBackgroundFrame(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 630
    :cond_2
    :goto_0
    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v3, v7

    .line 631
    :cond_3
    iget v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v4, v7

    .line 632
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    new-instance v7, Landroid/graphics/Rect;

    sub-int/2addr v6, v5

    sub-int/2addr v0, v4

    invoke-direct {v7, v3, v6, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v7}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->setBackgroundFrame(Landroid/graphics/Rect;)V

    .line 638
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/navigationbar/NavigationBarView;->onMeasure(II)V

    return-void
.end method

.method public onScreenStateChanged(Z)V
    .locals 2

    .line 338
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->onScreenStateChanged(Z)V

    if-nez p1, :cond_0

    .line 341
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    .line 342
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mNavBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->isTipPopupShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 343
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mNavBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->hide()V

    :cond_0
    return-void
.end method

.method protected orientBackButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V
    .locals 0

    return-void
.end method

.method protected orientHomeButton(Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;)V
    .locals 0

    return-void
.end method

.method public reInflateNavbarLayout()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateLayoutProviderView()V

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateCurrentView()V

    return-void
.end method

.method public reorient()V
    .locals 3

    .line 409
    invoke-super {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reorient()V

    .line 411
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method public setColorProvider(Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;)V
    .locals 1

    .line 671
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    const/4 v0, 0x0

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->setProvider(ILjava/lang/Object;)V

    return-void
.end method

.method public setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V
    .locals 0

    .line 686
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->setDefaultIconTheme(Lcom/samsung/systemui/splugins/navigationbar/IconThemeBase;)V

    return-void
.end method

.method public setIconThemeAlpha(F)V
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 692
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->setLightsOutDisable(Z)V

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->nav_buttons:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 696
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setLayoutProviderContainer(Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;)V
    .locals 2

    .line 701
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->setProvider(ILjava/lang/Object;)V

    .line 702
    iget-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateLayoutProviderView()V

    .line 703
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateCurrentView()V

    return-void
.end method

.method public showA11ySwipeUpTipPopup()V
    .locals 1

    .line 666
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mNavBarTip:Lcom/android/systemui/navigationbar/NavBarTipPopup;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->isScreenReaderEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavBarTipPopup;->showA11ySwipeUpTip(Z)V

    return-void
.end method

.method protected showHideKeyboardButton()Z
    .locals 6

    .line 511
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_SHOW_KEYBOARD_BUTTON:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_PORTRAIT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    iget v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    if-eqz v4, :cond_1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x1

    .line 513
    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 514
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v2

    .line 515
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    .line 511
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public showPinningEnterExitToast(Z)V
    .locals 0

    .line 190
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->showPinningEnterExitToast(Z)V

    .line 191
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mInScreenPinning:Z

    .line 192
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_PERFORMANCE_TUNING:Z

    if-eqz p1, :cond_0

    .line 193
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateDisabledSystemUiStateFlags()V

    :cond_0
    return-void
.end method

.method public showPinningEscapeToast()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mScreenPinningNotify:Lcom/android/systemui/navigationbar/ScreenPinningNotify;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    .line 200
    invoke-static {v1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->isRecentsButtonVisible()Z

    move-result p0

    .line 199
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/navigationbar/ScreenPinningNotify;->showEscapeToast(ZZ)V

    return-void
.end method

.method protected updateCurrentView()V
    .locals 4

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->resetViews()V

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    .line 121
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_SUPPORT_PHONE_LAYOUT_PROVIDER:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-interface {v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z

    move-result v0

    .line 122
    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mIsVertical:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 124
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 129
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mVertical:Landroid/view/View;

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHorizontal:Landroid/view/View;

    :goto_2
    iput-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->setVertical(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    if-ne v1, v3, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->setAlternativeOrder(Z)V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationInflaterView:Lcom/android/systemui/navigationbar/NavigationBarInflaterView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarInflaterView;->updateButtonDispatchersCurrentView()V

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateLayoutTransitionsEnabled()V

    .line 136
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->nav_bar_widget:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateRemoteView()V

    :cond_5
    return-void
.end method

.method public updateDisabledSystemUiStateFlags()V
    .locals 4

    .line 298
    invoke-super {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateDisabledSystemUiStateFlags()V

    .line 300
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mInScreenPinning:Z

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/high16 v3, 0x400000

    and-int/2addr v1, v3

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/high16 v1, 0x1000000

    .line 301
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object v0

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 303
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    return-void
.end method

.method public updateEdgeBackGestureDisablePolicy(Z)V
    .locals 0

    .line 521
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mEdgeBackGestureHandler:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler;->updateDisablePolicy(Z)V

    return-void
.end method

.method public updateHintVisibility(ZZZ)V
    .locals 6

    .line 493
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavBarButtonOrderDefault()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    .line 496
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->getHintGroup()Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->getHintView(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v3

    const/4 v4, 0x4

    if-eqz p2, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    invoke-virtual {v3, v5}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 497
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->getHintGroup()Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->getHintView(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz p1, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 498
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->getHintGroup()Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->getHintView(I)Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz p3, :cond_4

    move p3, v2

    goto :goto_4

    :cond_4
    move p3, v4

    :goto_4
    invoke-virtual {v0, p3}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 499
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object p0

    if-nez p1, :cond_6

    if-eqz p2, :cond_5

    goto :goto_5

    :cond_5
    move v2, v4

    :cond_6
    :goto_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    return-void
.end method

.method protected updateIcons(Landroid/content/res/Configuration;)V
    .locals 4

    .line 227
    invoke-super {p0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    if-nez v0, :cond_0

    return-void

    .line 231
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->densityDpi:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 232
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-eq p1, v1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    move p1, v2

    :goto_1
    if-nez v0, :cond_3

    if-eqz p1, :cond_5

    .line 234
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    if-ne v0, v3, :cond_4

    move v2, v3

    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->updateConditions(Z)V

    .line 236
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_RECENT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRecentIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 237
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_HOME:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mHomeDefaultIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 238
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBackIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    .line 239
    iget-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    sget-object v0, Lcom/samsung/systemui/splugins/navigationbar/IconType;->TYPE_BACK_ALT:Lcom/samsung/systemui/splugins/navigationbar/IconType;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getButtonDrawable(Lcom/samsung/systemui/splugins/navigationbar/IconType;)Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mBackAltIcon:Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    :cond_5
    return-void
.end method

.method public updateIconsAndHints()V
    .locals 1

    .line 205
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateIcons(Landroid/content/res/Configuration;)V

    .line 206
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setNavigationIconHints(I)V

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->updateNavButtonIcons()V

    return-void
.end method

.method public updateNavButtonIcons()V
    .locals 9

    .line 247
    invoke-super {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateNavButtonIcons()V

    .line 248
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 249
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mGestureHintGroup:Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

    if-eqz v0, :cond_4

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    if-eqz v0, :cond_0

    .line 252
    iget-object v4, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;->getGestureHandleDrawable()Lcom/android/systemui/navigationbar/gesture/GestureHintDrawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/navigationbar/gestural/NavigationHandle;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v4, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_NAVBAR_CAN_MOVE_STATE:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v5}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 255
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v5

    .line 254
    invoke-interface {v0, p0, v4, v5}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 256
    iget-object v4, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mGestureHintGroup:Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

    iget-object v5, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mKeyButtonMapper:Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;

    invoke-virtual {v4, v5}, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->setIconResourceMapper(Lcom/android/systemui/navigationbar/icon/NavBarIconResourceMapper;)V

    .line 257
    iget-object v4, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mGestureHintGroup:Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

    iget v5, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mCurrentRotation:I

    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;->setCurrentRotation(IZ)V

    .line 258
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v4, Lcom/android/systemui/navigationbar/store/EventType;->ON_SET_GESTURE_HINT_VISIBILITY:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v5, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v5}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DISPLAY_ID:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 260
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getContextDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_RECENT_ENABLED:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getRecentsButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result v7

    if-nez v7, :cond_1

    move v7, v2

    goto :goto_0

    :cond_1
    move v7, v3

    :goto_0
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_HOME_ENABLED:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    iget v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/high16 v8, 0x200000

    and-int/2addr v7, v8

    if-nez v7, :cond_2

    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v3

    .line 262
    :goto_1
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_BACK_ENABLED:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    iget v7, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mDisabledFlags:I

    const/high16 v8, 0x400000

    and-int/2addr v7, v8

    if-nez v7, :cond_3

    move v7, v2

    goto :goto_2

    :cond_3
    move v7, v3

    .line 263
    :goto_2
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v5

    .line 264
    invoke-virtual {v5}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v5

    .line 258
    invoke-interface {v0, p0, v4, v5}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->reapplyDarkIntensity()V

    .line 267
    :cond_4
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavigationIconHints:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    move v0, v2

    goto :goto_3

    :cond_5
    move v0, v3

    :goto_3
    if-eqz v0, :cond_6

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->showHideKeyboardButton()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mShowHideKeyboard:Z

    if-nez v4, :cond_6

    .line 271
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBackButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->setVisibility(I)V

    .line 272
    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    sget v5, Lcom/android/systemui/R$id;->ime_switcher:I

    invoke-virtual {v4, v5, v3}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->setButtonVisibility(IZ)I

    :cond_6
    if-eqz v0, :cond_7

    .line 275
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mShowHideKeyboard:Z

    if-eqz v0, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v3

    :goto_4
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->notifyShowHideKeyboard(Z)V

    .line 277
    :cond_8
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getImeSwitchButton()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_5

    :cond_9
    move v2, v3

    .line 280
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-nez v2, :cond_a

    move v1, v3

    :cond_a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_UPDATE_GAMETOOLS_SYSTEMUI_STATE_FLAG:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    .line 282
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    .line 281
    invoke-interface {v0, p0, v1, v2}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public updateNavigationBarColor()V
    .locals 5

    .line 307
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->GET_INT_NAVBAR_COLOR:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    iget-object v4, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 308
    invoke-static {v4}, Lcom/android/systemui/navigationbar/util/LightNavigationBarUtil;->getBackgroundOpaqueColor(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v2

    const-class v3, Ljava/lang/Integer;

    .line 307
    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 311
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    if-eqz v1, :cond_0

    const/4 v2, 0x4

    .line 312
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    .line 314
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper;->setNavigationBarCurrentColor(I)V

    return-void
.end method

.method public updateOpaqueColor(I)V
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    .line 714
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    const/4 p1, 0x4

    .line 713
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    return-void
.end method

.method public updateRegionSamplingRect()V
    .locals 0

    .line 526
    iget-object p0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mRegionSamplingHelper:Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gestural/RegionSamplingHelper;->updateSamplingRect()V

    return-void
.end method

.method public updateRemoteView()V
    .locals 6

    .line 319
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    sget v1, Lcom/android/systemui/R$id;->left_remoteview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 324
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->right_remoteview:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 327
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v3, Lcom/android/systemui/navigationbar/store/EventType;->ON_UPDATE_REMOTEVIEW:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v5, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_LEFT_REMOTEVIEW_CONTAINER:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 328
    invoke-virtual {v4, v5, v0}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_RIGHT_REMOTEVIEW_CONTAINER:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 329
    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_CONTEXTUALBUTTON_VISIBLE:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mContextualButtonGroup:Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;

    .line 330
    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/buttons/ContextualButtonGroup;->getVisibleContextButton()Lcom/android/systemui/navigationbar/buttons/ContextualButton;

    move-result-object v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_DARK_INTENSITY:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getLightTransitionsController()Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->getCurrentDarkIntensity()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 327
    invoke-interface {v2, p0, v3, v0}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method protected updateSamplingListener(Z)V
    .locals 4

    .line 643
    iget-object v0, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v1, Lcom/android/systemui/navigationbar/store/EventType;->ON_REGION_SAMPLING_ENABLE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_REGION_SAMPLING_ENABLED:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 644
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p1

    .line 645
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 643
    invoke-interface {v0, p0, v1, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method protected updateSamplingRect()V
    .locals 11

    .line 531
    iget v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mNavBarMode:I

    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/NavigationModeUtil;->isBottomGesture(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->getHintView()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 533
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 537
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 538
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10}, Landroid/graphics/Point;-><init>()V

    .line 539
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 540
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->samsung_hint_view_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 541
    iget-object v2, p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v3, Lcom/android/systemui/navigationbar/store/EventType;->GET_BOOL_NAVBAR_CAN_MOVE_STATE:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v4, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v5, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 542
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v4

    .line 541
    invoke-interface {v2, p0, v3, v4}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    const/4 v2, 0x0

    .line 543
    aget v3, v1, v2

    const/4 v2, 0x1

    aget v4, v1, v2

    .line 544
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v7

    move-object v2, p0

    .line 543
    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->getSamplingBounds(IIIIIIZLandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v0

    .line 546
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 547
    iget-object v1, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/NavigationBarView;->mSamplingBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarView;->getSamplingBoundsInOneHand()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_2
    return-void
.end method
