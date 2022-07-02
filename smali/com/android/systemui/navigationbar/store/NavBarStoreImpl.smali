.class public Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;
.super Ljava/lang/Object;
.source "NavBarStoreImpl.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/store/NavBarStore;


# instance fields
.field private mBackEnabled:Z

.field private mBandAidPackFactory:Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;

.field private mContext:Landroid/content/Context;

.field private mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

.field private mDeviceProvisioned:Z

.field private mDisabledFlags1:I

.field private mDisabledFlags2:I

.field private mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

.field private mHandleEventLoggingEnabled:Z

.field private mHardKeyIntentState:Z

.field private mHintVI:Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;

.field private mHomeEnabled:Z

.field private mInflateScreenSize:Landroid/graphics/Point;

.field private mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

.field private mIsNavbarCanMove:Z

.field private mIsNightMode:Z

.field private mIsSPayShowing:Z

.field private mIsSupportPhoneProvider:Z

.field private mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

.field private mLayoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

.field private mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field private mLoggingDepth:I

.field mModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mNavbarTransitionMode:I

.field private mNavigationBarIconHint:I

.field private mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

.field private mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

.field private mNavigationMode:I

.field mPacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/navigationbar/bandaid/BandAidPack;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentEnabled:Z

.field private mRegionSamplingEnabled:Z

.field private mRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStoreLogUtil:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

.field private mSubNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

.field private mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;


# direct methods
.method public static synthetic $r8$lambda$9i6E2geJ7lXPiM4dZUAzrBrxuEA(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Lcom/android/systemui/navigationbar/bandaid/Band;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$handleEvent$15(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Lcom/android/systemui/navigationbar/bandaid/Band;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$9ye9-rtyI9uj_CkKB43q9YaVtkI(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$handleEvent$13(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AGzE8ST3bafrcO7v9TRzs0YFHXE(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$initInteractors$3(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CvMKneLAYWihUwqPhmCQNeqontc(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$initInteractors$5(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EGFKMLCRtblb3LStx5-tjuqlnp8(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$initInteractors$9(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GdmKSojbzhynedZK3HsaUo1w4vU(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$initInteractors$7()V

    return-void
.end method

.method public static synthetic $r8$lambda$KjwCiNiS2D41kdmiKBVQvXjL0n0(Ljava/util/Map;Ljava/lang/reflect/Type;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$containNullDependency$20(Ljava/util/Map;Ljava/lang/reflect/Type;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$RV0Tp4QJHHczm-RuNxmOEV57YnQ(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$initInteractors$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$UHT2fLrmbNKp0_XecH8TQrz4GGs(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$apply$18()V

    return-void
.end method

.method public static synthetic $r8$lambda$Vm1Nw2zrkHH1Yg7ItylerEVord0(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$initInteractors$2(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X85KaQbHWsxjIgfbkwZAb0pxN_s(Lcom/android/systemui/navigationbar/bandaid/Band;Lcom/android/systemui/navigationbar/bandaid/Band;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$handleEvent$16(Lcom/android/systemui/navigationbar/bandaid/Band;Lcom/android/systemui/navigationbar/bandaid/Band;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$XpljXe9SrrA7Lu6_XLBZm_3iOsM(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$initInteractors$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Z1BZ_leFNSL32U09JIfrd-oe9ZI(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$apply$19()V

    return-void
.end method

.method public static synthetic $r8$lambda$a8F_kBSL_DbkWMBUSkvXGpKXTm8(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$initInteractors$1(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jVLFM_ObIKNjfQjb2dvbWcjwiIs(Lcom/android/systemui/navigationbar/bandaid/BandAidPack;)Ljava/util/stream/Stream;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$handleEvent$14(Lcom/android/systemui/navigationbar/bandaid/BandAidPack;)Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$kbIeBacL-DHdJdG_9U71nrckVhA(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$initInteractors$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$mFkkJhLh8x0xIwb5Suf4lGnlbtQ(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$initInteractors$12(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sbQ8RH689Bm3meapVZBAAQZycWE(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/systemui/navigationbar/bandaid/Band;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$handleEvent$17(Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/systemui/navigationbar/bandaid/Band;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tPiXvSzRU2ucoxsRgiVzqZBA9nI(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$initInteractors$11(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yQEZV6__d1LeRIKh7sjF1eZJmDc(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$initInteractors$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$zmbVkd_opnYe6wx2k_h0xKAZiX4(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->lambda$initInteractors$4(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/SettingsHelper;Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;Lcom/android/systemui/navigationbar/interactor/InteractorFactory;Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;Lcom/android/systemui/navigationbar/util/StoreLogUtil;Lcom/android/systemui/navigationbar/util/DisplayUtil;Lcom/android/systemui/basic/util/CoverUtilWrapper;Lcom/android/systemui/model/SysUiState;)V
    .locals 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mPacks:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLoggingDepth:I

    .line 113
    iput v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationMode:I

    .line 114
    iput v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavbarTransitionMode:I

    const/4 v1, 0x1

    .line 115
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    .line 126
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInflateScreenSize:Landroid/graphics/Point;

    .line 137
    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    .line 138
    iput-object p8, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    .line 139
    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 140
    iput-object p9, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    .line 141
    iput-object p3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    .line 142
    iput-object p4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    .line 143
    iput-object p6, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 144
    iput-object p7, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHintVI:Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;

    .line 145
    iput-object p5, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mBandAidPackFactory:Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;

    .line 146
    iput-object p10, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    .line 147
    iput-object p11, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 150
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 151
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    move-result p4

    invoke-virtual {p2, p3, p4}, Landroid/graphics/Point;->set(II)V

    .line 152
    iget-object p3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->setRotation(I)V

    .line 153
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {p1, p2}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->setScreenSize(Landroid/graphics/Point;)V

    .line 155
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110116

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mIsNavbarCanMove:Z

    .line 156
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$bool;->config_navBarSupportPhoneLayoutProvider:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mIsSupportPhoneProvider:Z

    .line 157
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    invoke-interface {p1, v0}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;->updateLayoutProvider(Z)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    return-void
.end method

.method private checkScreenSizeChangedWithoutOrientationChanged()Z
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInflateScreenSize:Landroid/graphics/Point;

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 864
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static containNullDependency(Ljava/util/Map;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Type;",
            ">;)Z"
        }
    .end annotation

    .line 784
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda20;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method private getSetupWizardView()Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;
    .locals 1

    .line 855
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    sget v0, Lcom/android/systemui/R$id;->navigation_setupwizard:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    return-object p0
.end method

.method private initInteractors()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->addCallback(Ljava/lang/Runnable;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    new-instance v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;->addCallback(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->addCallback(Ljava/util/function/Consumer;)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    new-instance v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;->addCallback(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/OpenThemeInteractor;->addCallback(Ljava/lang/Runnable;)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;->addCallback(Ljava/lang/Runnable;)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/SettingsSoftResetInteractor;->addCallback(Ljava/lang/Runnable;)V

    .line 195
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->addCallback(Ljava/util/function/Consumer;)V

    .line 199
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/ButtonPositionInteractor;->addCallback(Ljava/lang/Runnable;)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/OneHandModeInteractor;->addCallback(Ljava/util/function/Consumer;)V

    .line 205
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SUBSCREEN:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;

    new-instance v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/SubScreenWidgetInteractor;->addCallback(Ljava/util/function/Consumer;)V

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setupColorSettingInteractor()V

    return-void
.end method

.method private isOpaqueNavigationBar()Z
    .locals 1

    .line 859
    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavbarTransitionMode:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isSetupWizardNavbarType()Z
    .locals 1

    .line 849
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDeviceProvisioned:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/EncryptionHelper;->IS_DATA_ENCRYPTED:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_KEYGUARD_SHOWING:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    .line 851
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$apply$18()V
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 719
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$apply$19()V
    .locals 1

    .line 725
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 726
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$containNullDependency$20(Ljava/util/Map;Ljava/lang/reflect/Type;)Z
    .locals 0

    .line 784
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$handleEvent$13(Ljava/lang/Object;)V
    .locals 3

    .line 246
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_DESKTOP_MODE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DESKTOP_MODE_STATE:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 247
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 246
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method private static synthetic lambda$handleEvent$14(Lcom/android/systemui/navigationbar/bandaid/BandAidPack;)Ljava/util/stream/Stream;
    .locals 0

    .line 300
    invoke-interface {p0}, Lcom/android/systemui/navigationbar/bandaid/BandAidPack;->getBands()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$handleEvent$15(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Lcom/android/systemui/navigationbar/bandaid/Band;)Z
    .locals 2

    .line 305
    invoke-virtual {p3}, Lcom/android/systemui/navigationbar/bandaid/Band;->getRuneDependency()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual {p3}, Lcom/android/systemui/navigationbar/bandaid/Band;->getBandAidDependency()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    invoke-virtual {p3}, Lcom/android/systemui/navigationbar/bandaid/Band;->getTargetModule()Ljava/lang/reflect/Type;

    move-result-object v0

    const-class v1, Lcom/android/systemui/navigationbar/SamsungPluginNavigationBar;

    if-eq v0, v1, :cond_0

    .line 308
    invoke-virtual {p3}, Lcom/android/systemui/navigationbar/bandaid/Band;->getTargetModule()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 309
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p3}, Lcom/android/systemui/navigationbar/bandaid/Band;->getTargetModule()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;

    move-result-object p1

    if-ne v0, p1, :cond_1

    .line 311
    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/navigationbar/bandaid/Band;->getTargetEvent()Lcom/android/systemui/navigationbar/store/EventType;

    move-result-object p1

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    .line 312
    invoke-virtual {p3}, Lcom/android/systemui/navigationbar/bandaid/Band;->getModuleDependencies()Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->containNullDependency(Ljava/util/Map;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$handleEvent$16(Lcom/android/systemui/navigationbar/bandaid/Band;Lcom/android/systemui/navigationbar/bandaid/Band;)I
    .locals 0

    .line 313
    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/bandaid/Band;->getPriority()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/Band;->getPriority()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private synthetic lambda$handleEvent$17(Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicReference;Lcom/android/systemui/navigationbar/bandaid/Band;)V
    .locals 4

    .line 315
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    iget v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLoggingDepth:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Band]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/systemui/navigationbar/bandaid/Band;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 319
    :cond_0
    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLoggingDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLoggingDepth:I

    .line 321
    invoke-virtual {p3}, Lcom/android/systemui/navigationbar/bandaid/Band;->getPatchAction()Ljava/util/function/Consumer;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 322
    sget-object p3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_RESULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 323
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 326
    :cond_1
    iget p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLoggingDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLoggingDepth:I

    return-void
.end method

.method private synthetic lambda$initInteractors$0()V
    .locals 2

    .line 168
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_KEY_ORDER_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initInteractors$1(Ljava/lang/Object;)V
    .locals 3

    .line 171
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVIGATION_MODE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVIGATION_MODE:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 172
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 171
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initInteractors$10()V
    .locals 2

    .line 199
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_KEY_POSITION_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    .line 200
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 199
    invoke-virtual {p0, p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initInteractors$11(Ljava/lang/Object;)V
    .locals 3

    .line 203
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_ONEHANDE_MODE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_ONEHAND_INFO:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 204
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 203
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initInteractors$12(Ljava/lang/Object;)V
    .locals 1

    .line 207
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    check-cast p1, Landroid/graphics/Point;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->setScreenSize(ILandroid/graphics/Point;)V

    return-void
.end method

.method private synthetic lambda$initInteractors$2(Ljava/lang/Object;)V
    .locals 3

    .line 173
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_CAN_MOVE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_CAN_MOVE:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 174
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 173
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initInteractors$3(Ljava/lang/Object;)V
    .locals 3

    .line 177
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_BUTTON_FORCED_VISIBLE_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_BUTTON_FORCED_VISIBLE:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 178
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 177
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initInteractors$4(Ljava/lang/Object;)V
    .locals 1

    .line 181
    sget-object p1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_KNOX_POLICY_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v0}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    .line 182
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v0

    .line 181
    invoke-virtual {p0, p0, p1, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initInteractors$5(Ljava/lang/Object;)V
    .locals 3

    .line 183
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_HARD_KEY_INTENT_POLICY_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_HARD_KEY_INTENT_STATUS:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 184
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 183
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initInteractors$6()V
    .locals 2

    .line 186
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_OPEN_THEME_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    .line 187
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 186
    invoke-virtual {p0, p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initInteractors$7()V
    .locals 2

    .line 189
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_THEME_DEFAULT_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    .line 190
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 189
    invoke-virtual {p0, p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initInteractors$8()V
    .locals 2

    .line 192
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_SETTINGS_SOFT_RESET:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    .line 193
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object v1

    .line 192
    invoke-virtual {p0, p0, v0, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method private synthetic lambda$initInteractors$9(Ljava/lang/Object;)V
    .locals 3

    .line 196
    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->ON_EDGE_BACK_GESTURE_DISABLED_BY_POLICY_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v1, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_EDGE_BACK_GESTURE_DISABLED:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 197
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 196
    invoke-virtual {p0, p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method private setupColorSettingInteractor()V
    .locals 1

    .line 788
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 790
    invoke-interface {p0, v0}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->addColorCallback(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addPack(Lcom/android/systemui/navigationbar/bandaid/BandAidPack;)V
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mPacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 839
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mPacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public apply(Lcom/android/systemui/navigationbar/store/NavBarStoreAction;)Z
    .locals 11

    .line 583
    const-class v0, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    if-eqz v1, :cond_0

    .line 584
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    iget v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLoggingDepth:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apply("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getType()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    .line 587
    :cond_0
    sget-object v1, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStoreAction$ActionType:[I

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getType()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$ActionType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 774
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getSupportPhoneProvider()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 775
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getSupportPhoneProvider()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mIsSupportPhoneProvider:Z

    goto/16 :goto_3

    .line 771
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRegionSamplingRect()V

    goto/16 :goto_3

    .line 768
    :pswitch_2
    sget-object p0, Lcom/android/systemui/navigationbar/util/OneHandModeUtil;->Companion:Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getOneHandModeInfo()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/util/OneHandModeUtil$Companion;->setOneHandModeInfo(Lcom/android/systemui/navigationbar/store/NavBarStoreAction$OneHandModeInfo;)V

    goto/16 :goto_3

    .line 764
    :pswitch_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationMode:I

    .line 765
    invoke-virtual {p1, p0, v3}, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;->setModeOverlay(IZ)V

    goto/16 :goto_3

    .line 760
    :pswitch_4
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationMode:I

    .line 761
    invoke-virtual {p1, p0, v4}, Lcom/android/systemui/navigationbar/interactor/NavigationModeInteractor;->setModeOverlay(IZ)V

    goto/16 :goto_3

    .line 757
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->showA11ySwipeUpTipPopup()V

    goto/16 :goto_3

    .line 754
    :pswitch_6
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mIsSupportPhoneProvider:Z

    invoke-interface {p1, v0}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;->updateLayoutProvider(Z)Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    goto/16 :goto_3

    .line 750
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    const/high16 v1, 0x2000000

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getHardKeyIntentPolicy()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    .line 751
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    goto/16 :goto_3

    .line 747
    :pswitch_8
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getHardKeyIntentPolicy()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHardKeyIntentState:Z

    goto/16 :goto_3

    .line 743
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    const/high16 v1, 0x800000

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getNavbarVisibility()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    .line 744
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    goto/16 :goto_3

    .line 740
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateEdgeBackGestureDisablePolicy(Z)V

    goto/16 :goto_3

    .line 737
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateEdgeBackGestureDisablePolicy(Z)V

    goto/16 :goto_3

    .line 734
    :pswitch_c
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSetupWizardView()Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getA11yClickable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getA11yLongClickable()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->updateA11yShortcut(ZZ)V

    goto/16 :goto_3

    .line 731
    :pswitch_d
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v0, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getThemeExist()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/interactor/UseThemeDefaultInteractor;->setEnabled(Z)V

    goto/16 :goto_3

    .line 724
    :pswitch_e
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 717
    :pswitch_f
    sget-object p1, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 713
    :pswitch_10
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object p1

    .line 714
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    iget v0, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/navigationbar/NavigationBarView;->marqueeNavigationBarIcon(II)V

    goto/16 :goto_3

    .line 710
    :pswitch_11
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getSPayVisible()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mIsSPayShowing:Z

    goto/16 :goto_3

    .line 700
    :pswitch_12
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SUBSCREEN:Z

    if-eqz v0, :cond_2

    .line 701
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getDisplayId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_2

    .line 702
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSubNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz p0, :cond_6

    .line 703
    invoke-virtual {p0, v4, v4, v4}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateHintVisibility(ZZZ)V

    goto/16 :goto_3

    .line 706
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0, v4, v4, v4}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateHintVisibility(ZZZ)V

    goto/16 :goto_3

    .line 690
    :pswitch_13
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SUBSCREEN:Z

    if-eqz v0, :cond_3

    .line 691
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getDisplayId()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v3, :cond_3

    .line 692
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSubNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    if-eqz p1, :cond_6

    .line 693
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRecentEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHomeEnabled:Z

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mBackEnabled:Z

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateHintVisibility(ZZZ)V

    goto/16 :goto_3

    .line 696
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRecentEnabled:Z

    iget-boolean v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHomeEnabled:Z

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mBackEnabled:Z

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateHintVisibility(ZZZ)V

    goto/16 :goto_3

    .line 685
    :pswitch_14
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getRecentEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRecentEnabled:Z

    .line 686
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getHomeEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHomeEnabled:Z

    .line 687
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getBackEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mBackEnabled:Z

    goto/16 :goto_3

    .line 682
    :pswitch_15
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHintVI:Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->reset()V

    goto/16 :goto_3

    .line 678
    :pswitch_16
    iget-object v5, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHintVI:Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getGestureTarget()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getGestureDistanceX()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 679
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getGestureDistanceY()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getGestureDuration()Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 678
    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->onActionMove(IIIJ)V

    goto/16 :goto_3

    .line 675
    :pswitch_17
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHintVI:Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getGestureTarget()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mIsNavbarCanMove:Z

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->start(IZ)V

    goto/16 :goto_3

    .line 672
    :pswitch_18
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHintVI:Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHomeHandle()Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getHintGroup()Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->setHintViewGroup(Lcom/android/systemui/navigationbar/buttons/ButtonDispatcher;Lcom/android/systemui/navigationbar/gesture/GestureHintGroup;)V

    goto/16 :goto_3

    .line 669
    :pswitch_19
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, v3}, Lcom/android/systemui/util/SettingsHelper;->setGameToolsEnabled(Z)V

    goto/16 :goto_3

    .line 665
    :pswitch_1a
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSysUiFlagContainer:Lcom/android/systemui/model/SysUiState;

    const/high16 v1, 0x100000

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getGameToolsShowing()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/model/SysUiState;->setFlag(IZ)Lcom/android/systemui/model/SysUiState;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    .line 666
    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/model/SysUiState;->commitUpdate(I)V

    goto/16 :goto_3

    .line 660
    :pswitch_1b
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getRemoteViewShortcut()Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;

    move-result-object p1

    .line 661
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->getRequestClass()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->getRemoteViews()Landroid/widget/RemoteViews;

    move-result-object v1

    .line 662
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction$RemoteViewShortcut;->getPriority()I

    move-result p1

    .line 661
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    goto/16 :goto_3

    .line 657
    :pswitch_1c
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getDarkIntensity()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->applyDarkIntensity(Ljava/lang/Float;)V

    goto/16 :goto_3

    .line 653
    :pswitch_1d
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    .line 654
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getContextualButtonVisible()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getRotation()I

    move-result p0

    .line 653
    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->updateRightRemoteViewVisibility(ZI)V

    goto/16 :goto_3

    .line 648
    :pswitch_1e
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getRotation()I

    move-result p0

    .line 649
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getRemoteViewContainer()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 650
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getRemoteViewContainer()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 648
    invoke-virtual {v0, p0, v1, p1}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->updateRemoteViewContainer(ILandroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    goto/16 :goto_3

    .line 645
    :pswitch_1f
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateRemoteView()V

    goto/16 :goto_3

    .line 642
    :pswitch_20
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getNavbarTransitionMode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavbarTransitionMode:I

    goto/16 :goto_3

    .line 638
    :pswitch_21
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getNavigationMode()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationMode:I

    .line 639
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHintVI:Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;->onNavigationModeChanged(I)V

    goto/16 :goto_3

    .line 633
    :pswitch_22
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getCanMove()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 634
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getCanMove()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mIsNavbarCanMove:Z

    goto/16 :goto_3

    .line 630
    :pswitch_23
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getCanMove()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->setNavbarCanMove(Z)V

    goto/16 :goto_3

    .line 626
    :pswitch_24
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    const/4 v0, 0x4

    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    .line 627
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->getNavigationBarColor()I

    move-result p0

    .line 626
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    goto/16 :goto_3

    .line 623
    :pswitch_25
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->updateIconsAndHints()V

    goto/16 :goto_3

    .line 620
    :pswitch_26
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getNightMode()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mIsNightMode:Z

    goto/16 :goto_3

    .line 617
    :pswitch_27
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->reInflateNavbarLayout()V

    goto :goto_3

    .line 613
    :pswitch_28
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getNavbarIconHint()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarIconHint:I

    .line 614
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSetupWizardView()Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarIconHint:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setNavigationIconHints(I)V

    goto :goto_3

    .line 609
    :pswitch_29
    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreAction;->getDarkIntensity()Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 610
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSetupWizardView()Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->setDarkIntensity(F)V

    goto :goto_3

    .line 606
    :pswitch_2a
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSetupWizardView()Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->disableBack(Z)V

    goto :goto_3

    .line 603
    :pswitch_2b
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getSetupWizardView()Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/systemui/navigationbar/SamsungNavigationBarSetupWizardView;->disableBack(Z)V

    goto :goto_3

    .line 599
    :pswitch_2c
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    sget v0, Lcom/android/systemui/R$id;->navigation_inflater:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 600
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    sget p1, Lcom/android/systemui/R$id;->navigation_setupwizard:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 595
    :pswitch_2d
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    sget v0, Lcom/android/systemui/R$id;->navigation_inflater:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 596
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    sget p1, Lcom/android/systemui/R$id;->navigation_setupwizard:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 592
    :pswitch_2e
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->updateNavigation()V

    goto :goto_3

    .line 589
    :pswitch_2f
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/LightBarController;->reevaluate()V

    :cond_6
    :goto_3
    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getProvider(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 830
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    return-object p0

    .line 828
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class p1, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;
    .locals 7

    .line 352
    const-class v0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 354
    sget-object v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$NavBarStore$ValueType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 564
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1, v6}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize(I)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonDistanceSize(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 561
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1, v6}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize(I)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonDistanceSize(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 558
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1, v6}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize(I)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 555
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1, v6}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize(I)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 552
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1, v6}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize(I)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getGestureWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 549
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1, v6}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize(I)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getGestureWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 546
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1, v6}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize(I)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 543
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1, v6}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize(I)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 540
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1, v6}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize(I)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceSidePadding(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 537
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1, v6}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize(I)Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceSidePadding(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 534
    :pswitch_a
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShowNavigationForSubscreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v0

    if-eqz v0, :cond_0

    move v5, v6

    :cond_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 530
    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isColorThemeEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 527
    :pswitch_c
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->checkScreenSizeChangedWithoutOrientationChanged()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 524
    :pswitch_d
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mIsSupportPhoneProvider:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 521
    :pswitch_e
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/navigationbar/util/NavBarTipPopupUtil;->isA11ySwipeUpPopupAvailable(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 518
    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/interactor/GestureNavigationSettingsInteractor;->isButtonForcedVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 515
    :pswitch_10
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHardKeyIntentState:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 512
    :pswitch_11
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/interactor/EdgeBackGesturePolicyInteractor;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 508
    :pswitch_12
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getActiveThemePackage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 509
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v5, v6

    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 505
    :pswitch_13
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarUseThemeDefault()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 502
    :pswitch_14
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/interactor/KnoxStateMonitorInteractor;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 499
    :pswitch_15
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110118

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v5, v6

    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 496
    :pswitch_16
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarHideKeyboardButtonEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 493
    :pswitch_17
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mIsSPayShowing:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 490
    :pswitch_18
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mIsNavbarCanMove:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 487
    :pswitch_19
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/android/systemui/navigationbar/interactor/GestureHintInteractor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/GestureHintInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/interactor/GestureHintInteractor;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 484
    :pswitch_1a
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mCoverUtilWrapper:Lcom/android/systemui/basic/util/CoverUtilWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/basic/util/CoverUtilWrapper;->isClearCoverClosed()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 481
    :pswitch_1b
    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarIconHint:I

    and-int/2addr v0, v6

    if-eqz v0, :cond_4

    move v5, v6

    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 478
    :pswitch_1c
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isGameToolsEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 475
    :pswitch_1d
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureProtectionEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 472
    :pswitch_1e
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isGameMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 469
    :pswitch_1f
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->isSetupWizardNavbarType()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;->BOOL_NAVBAR_BUTTON_FORCED_VISIBLE:Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    move v5, v6

    :cond_6
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 462
    :pswitch_20
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_7

    .line 463
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isKeyguardShowing()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 465
    :cond_7
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 459
    :pswitch_21
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    invoke-virtual {v1, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->isEnabled()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 456
    :pswitch_22
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isRightRemoteViewExist()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 453
    :pswitch_23
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->isLeftRemoteViewExist()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 450
    :pswitch_24
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRegionSamplingEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 446
    :pswitch_25
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEdgePinMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 447
    invoke-static {}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->getInstance()Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;->isShowingMainDisplay()Z

    move-result v0

    if-eqz v0, :cond_8

    move v5, v6

    .line 446
    :cond_8
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 443
    :pswitch_26
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->isOpaqueNavigationBar()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 440
    :pswitch_27
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->isOpaqueNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mIsNightMode:Z

    if-nez v0, :cond_9

    move v5, v6

    :cond_9
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 437
    :pswitch_28
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mIsNightMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 434
    :pswitch_29
    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationMode:I

    if-ne v0, v3, :cond_a

    move v5, v6

    :cond_a
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 431
    :pswitch_2a
    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationMode:I

    if-ne v0, v4, :cond_b

    move v5, v6

    :cond_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 428
    :pswitch_2b
    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationMode:I

    if-eq v0, v4, :cond_c

    if-ne v0, v3, :cond_d

    :cond_c
    move v5, v6

    :cond_d
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 425
    :pswitch_2c
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v1, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    move v5, v6

    :cond_e
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_0

    .line 422
    :pswitch_2d
    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisabledFlags1:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 419
    :pswitch_2e
    iget v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarIconHint:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 416
    :pswitch_2f
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->samsung_navigation_bar_deadzone_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 413
    :pswitch_30
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->samsung_navigation_bar_deadzone_size_max:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 410
    :pswitch_31
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonDistanceSize(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 407
    :pswitch_32
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonDistanceSize(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 404
    :pswitch_33
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 401
    :pswitch_34
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 398
    :pswitch_35
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;->getDarkIntensity()Ljava/lang/Float;

    move-result-object v1

    goto/16 :goto_0

    .line 395
    :pswitch_36
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getGestureWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 392
    :pswitch_37
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getGestureWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 389
    :pswitch_38
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 386
    :pswitch_39
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getButtonWidth(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 383
    :pswitch_3a
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v6}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceSidePadding(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 380
    :pswitch_3b
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getSpaceSidePadding(Landroid/graphics/Point;Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_0

    .line 377
    :pswitch_3c
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->config_secNavBarLayout_shooting:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 374
    :pswitch_3d
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    invoke-virtual {v2, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->isEnabled()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->getNavigationBarAlignPosition()I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getLayout(ZI)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 371
    :pswitch_3e
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    invoke-virtual {v2, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->isEnabled()Z

    move-result v0

    invoke-interface {v1, v6, v0}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getGesturalLayout(ZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 368
    :pswitch_3f
    iget-object v1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    invoke-virtual {v2, v0}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/interactor/ButtonOrderInteractor;->isEnabled()Z

    move-result v0

    invoke-interface {v1, v5, v0}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getGesturalLayout(ZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 365
    :pswitch_40
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-interface {v0, v5}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getVerticalLayoutID(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 362
    :pswitch_41
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProvider:Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;

    invoke-interface {v0, v6}, Lcom/samsung/systemui/splugins/navigationbar/LayoutProvider;->getVerticalLayoutID(Z)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 359
    :pswitch_42
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v1, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-interface {v0}, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;->getNavigationBarColor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 356
    :pswitch_43
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 569
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    if-eqz v0, :cond_f

    .line 570
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    iget p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLoggingDepth:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printLog(ILjava/lang/String;)V

    :cond_f
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/navigationbar/store/EventType;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 214
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/android/systemui/navigationbar/store/EventType;",
            "Ljava/util/Map<",
            "Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 219
    const-class v0, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 220
    sget-object v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$1;->$SwitchMap$com$android$systemui$navigationbar$store$EventType:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 292
    :pswitch_0
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEVICE_PROVISIONED:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDeviceProvisioned:Z

    goto/16 :goto_2

    .line 288
    :pswitch_1
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_SUPPORT_PHONE_LAYOUT_PROVIDER:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mContext:Landroid/content/Context;

    .line 289
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$bool;->config_navBarSupportPhoneLayoutProvider:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 288
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 285
    :pswitch_2
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_REGION_SAMPLING_ENABLED:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRegionSamplingEnabled:Z

    goto/16 :goto_2

    .line 282
    :pswitch_3
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_ICON_HINT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarIconHint:I

    goto/16 :goto_2

    .line 279
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 275
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v2, Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mRemoteViewManager:Lcom/android/systemui/navigationbar/remoteview/NavBarRemoteViewManager;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_CAN_MOVE:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    iget-boolean v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mIsNavbarCanMove:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 272
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInflateScreenSize:Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v2}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v4}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->getScreenSize()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_2

    .line 267
    :pswitch_7
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_DISABLE1:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisabledFlags1:I

    .line 268
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_DISABLE2:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisabledFlags2:I

    .line 269
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 260
    :pswitch_8
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_CONFIGURATION:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Configuration;

    .line 261
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 262
    iget-object v4, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 263
    iget-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->setRotation(I)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mDisplayUtil:Lcom/android/systemui/navigationbar/util/DisplayUtil;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/util/DisplayUtil;->setScreenSize(Landroid/graphics/Point;)V

    goto/16 :goto_2

    .line 251
    :pswitch_9
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SUBSCREEN:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DISPLAY_ID:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 252
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 253
    iput-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSubNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    goto/16 :goto_2

    .line 255
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v5, Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-interface {v2, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 235
    :pswitch_a
    sget-boolean v2, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SUBSCREEN:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DISPLAY_ID:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 236
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 237
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_VIEW:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    iput-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mSubNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    goto :goto_1

    .line 239
    :cond_2
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_VIEW:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarView;

    iput-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 240
    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_NAVBAR_TRANSITIONS:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    iput-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 242
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v4, Lcom/android/systemui/navigationbar/NavigationBarView;

    iget-object v5, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarView:Lcom/android/systemui/navigationbar/NavigationBarView;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mNavigationBarTransitions:Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    invoke-interface {v2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v2, Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHintVI:Lcom/android/systemui/navigationbar/gesture/GestureHintAnimator;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_DESKTOP:Z

    if-eqz v0, :cond_4

    .line 246
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v2, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;

    new-instance v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/navigationbar/interactor/DesktopModeInteractor;->addCallback(Ljava/util/function/Consumer;)V

    goto :goto_2

    .line 226
    :pswitch_b
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_SUPPORT_SUBSCREEN:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DISPLAY_ID:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 227
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_3

    goto :goto_2

    .line 230
    :cond_3
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_LIGHTBAR_CONTROLLER:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LightBarController;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 231
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v4, Lcom/android/systemui/statusbar/phone/LightBarController;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 222
    :pswitch_c
    sget-object v0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_STATUSBAR:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 223
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mModules:Ljava/util/Map;

    const-class v4, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    .line 298
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    iget v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLoggingDepth:I

    invoke-virtual {v2, v4, p1, p2, p3}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printEventLog(ILjava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    .line 300
    iget-object v2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mPacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda18;->INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda18;

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    .line 301
    sget-object v4, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 303
    iget v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLoggingDepth:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLoggingDepth:I

    .line 305
    new-instance v4, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda19;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda19;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda7;

    .line 313
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda17;

    invoke-direct {v2, p0, p3, v1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 314
    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 329
    iget p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLoggingDepth:I

    sub-int/2addr p1, v3

    iput p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLoggingDepth:I

    .line 331
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mHandleEventLoggingEnabled:Z

    if-eqz p4, :cond_5

    .line 335
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 337
    :cond_5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 340
    iget-object p0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mStoreLogUtil:Lcom/android/systemui/navigationbar/util/StoreLogUtil;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/systemui/navigationbar/util/StoreLogUtil;->printErrorLog(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->printStackTrace()V

    if-eqz p4, :cond_6

    .line 343
    sget-object p0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 345
    :cond_6
    sget-object p0, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    invoke-interface {p3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mBandAidPackFactory:Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;

    invoke-interface {v0, p0}, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;->getPacks(Lcom/android/systemui/navigationbar/store/NavBarStore;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mPacks:Ljava/util/List;

    .line 163
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->initInteractors()V

    return-void
.end method

.method public isEnabled(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Z
    .locals 0

    .line 578
    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->getValue(Lcom/android/systemui/navigationbar/store/NavBarStore$ValueType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public restorePacks()V
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mBandAidPackFactory:Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;

    invoke-interface {v0, p0}, Lcom/android/systemui/navigationbar/bandaid/BandAidPackFactoryBase;->getPacks(Lcom/android/systemui/navigationbar/store/NavBarStore;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mPacks:Ljava/util/List;

    return-void
.end method

.method public setProvider(ILjava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 817
    :cond_0
    check-cast p2, Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    iput-object p2, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mLayoutProviderContainer:Lcom/samsung/systemui/splugins/navigationbar/LayoutProviderContainer;

    .line 818
    sget-object p1, Lcom/android/systemui/navigationbar/store/EventType;->ON_NAVBAR_LAYOUT_CONTAINER_CHANGED:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance p2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {p2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    .line 819
    invoke-virtual {p2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p2

    .line 818
    invoke-virtual {p0, p0, p1, p2}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    goto :goto_0

    .line 813
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->mInteractorFactory:Lcom/android/systemui/navigationbar/interactor/InteractorFactory;

    const-class v0, Lcom/samsung/systemui/splugins/navigationbar/ColorSetting;

    invoke-virtual {p1, v0, p2}, Lcom/android/systemui/navigationbar/interactor/InteractorFactory;->update(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 814
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/store/NavBarStoreImpl;->setupColorSettingInteractor()V

    :goto_0
    return-void
.end method
