.class public Lcom/android/systemui/statusbar/phone/StatusBarWindowController;
.super Ljava/lang/Object;
.source "StatusBarWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;
    }
.end annotation


# instance fields
.field private copyForWindowInset:Landroid/graphics/Rect;

.field private mBarHeight:I

.field private final mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private mLaunchAnimationContainer:Landroid/view/ViewGroup;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private final mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field private final mResources:Landroid/content/res/Resources;

.field private mStatusBarView:Landroid/view/ViewGroup;

.field private final mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

.field private final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$21bHSzE8PXa31tnbDPsYUuQUwbI(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->calculateStatusBarLocationsForAllRotations()V

    return-void
.end method

.method public static synthetic $r8$lambda$RQQXm6VA_F6w1aOemBaGpAeuTDg(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->lambda$attach$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;Landroid/view/IWindowManager;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Landroid/content/res/Resources;)V
    .locals 2

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    .line 77
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->copyForWindowInset:Landroid/graphics/Rect;

    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    .line 90
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    .line 91
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mIWindowManager:Landroid/view/IWindowManager;

    .line 92
    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 93
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mSuperStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    .line 94
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->getStatusBarWindowView()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    .line 95
    sget p2, Lcom/android/systemui/R$id;->status_bar_launch_animation_container:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLaunchAnimationContainer:Landroid/view/ViewGroup;

    .line 97
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 98
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mResources:Landroid/content/res/Resources;

    .line 100
    iget p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    if-gez p1, :cond_0

    const p1, 0x10504bf

    .line 101
    invoke-virtual {p6, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;Landroid/view/WindowInsets;Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->calculatePrivacyDotLocationForAllRotations(Landroid/view/WindowInsets;Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;)V

    return-void
.end method

.method private apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 298
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 299
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 300
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_HIDE_INFORMATION_MIRRORING:Z

    if-eqz v0, :cond_0

    .line 301
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->applyLeboMirroringFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 304
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private applyForceStatusBarVisibleFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 346
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mForceStatusBarVisible:Z

    if-nez v0, :cond_1

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 p1, p1, -0x1001

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    goto :goto_1

    .line 347
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :goto_1
    return-void
.end method

.method private applyHeight(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 289
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    if-eqz v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    :goto_0
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 290
    sget-boolean p0, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz p0, :cond_1

    .line 291
    iget-boolean p0, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mChangeStatusBarHeight:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 292
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method private applyLeboMirroringFlag(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V
    .locals 1

    .line 329
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mIsHideInformationMirroring:Z

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_0

    .line 330
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    goto :goto_0

    .line 332
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->semClearExtensionFlags(I)V

    :goto_0
    return-void
.end method

.method private calculatePrivacyDotLocationForAllRotations(Landroid/view/WindowInsets;Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;)V
    .locals 6

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    .line 186
    sget-boolean v1, Lcom/android/systemui/BasicRune;->BASIC_FOLDERBLE_TYPE_FOLD:Z

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_0

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 188
    invoke-virtual {v1, v4, p1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotationAndNavigationBar(ILandroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v4

    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 190
    invoke-virtual {v1, v5, p1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotationAndNavigationBar(ILandroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v5

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 192
    invoke-virtual {v1, v3, p1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotationAndNavigationBar(ILandroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v3

    .line 193
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 194
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotationAndNavigationBar(ILandroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v2

    goto :goto_0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 197
    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(I)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v4

    .line 198
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 199
    invoke-virtual {v1, v5, p1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotationAndNavigationBar(ILandroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v5

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 201
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(I)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v3

    .line 202
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 203
    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotationAndNavigationBar(ILandroid/view/WindowInsets;)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v2

    .line 206
    :goto_0
    aget-object v1, v0, v5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->copyForWindowInset:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    aget-object v1, v0, v5

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->copyForWindowInset:Landroid/graphics/Rect;

    if-eqz p2, :cond_2

    .line 211
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->calculatehavingInset(Landroid/view/WindowInsets;)Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$PrivacyInsetsCallback;->onWindowInsetsUpdated(Z)V

    .line 214
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-interface {p1, p0, v0}, Landroid/view/IWindowManager;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 216
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private calculateStatusBarLocationsForAllRotations()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/graphics/Rect;

    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v2, 0x0

    .line 230
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(I)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v2

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v2, 0x1

    .line 232
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(I)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v2

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v2, 0x2

    .line 234
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(I)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v2

    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    const/4 v2, 0x3

    .line 236
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getBoundingRectForPrivacyChipForRotation(I)Landroid/graphics/Rect;

    move-result-object v1

    aput-object v1, v0, v2

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mIWindowManager:Landroid/view/IWindowManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-interface {v1, p0, v0}, Landroid/view/IWindowManager;->updateStaticPrivacyIndicatorBounds(I[Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private calculatehavingInset(Landroid/view/WindowInsets;)Z
    .locals 2

    .line 223
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 224
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetLeft()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getStableInsetRight()I

    move-result p0

    if-lez p0, :cond_1

    :goto_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private synthetic lambda$attach$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    .line 175
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->notifyWindowInsetsChanged(Landroid/view/WindowInsets;)V

    .line 176
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public attach()V
    .locals 7

    .line 133
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    const/4 v1, -0x1

    const/16 v3, 0x7d0

    const v4, -0x7ffffff8

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 142
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 143
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, 0x0

    .line 145
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 146
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v1, "StatusBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 149
    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_PINNED_EDGE:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 150
    iput-boolean v1, v0, Landroid/view/WindowManager$LayoutParams;->receiveInsetsIgnoringZOrder:Z

    :cond_0
    const/16 v1, 0x2000

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    .line 157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->addCallback(Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsChangedListener;)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->addCallback(Lcom/android/systemui/statusbar/phone/PrivacyInsetsChangedListener;)V

    .line 172
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->calculateStatusBarLocationsForAllRotations()V

    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarWindowController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void
.end method

.method public getLaunchAnimationContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLaunchAnimationContainer:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getStatusBarHeight()I
    .locals 0

    .line 107
    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    return p0
.end method

.method public refreshStatusBarHeight()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mResources:Landroid/content/res/Resources;

    const v1, 0x10504bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 118
    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    if-eq v1, v0, :cond_0

    .line 119
    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mBarHeight:I

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    :cond_0
    return-void
.end method

.method public setCoverState(Z)V
    .locals 2

    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mChangeStatusBarHeight:Z

    if-eq v1, p1, :cond_0

    .line 364
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mChangeStatusBarHeight:Z

    .line 365
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    :cond_0
    return-void
.end method

.method public setForceStatusBarVisible(Z)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mForceStatusBarVisible:Z

    .line 248
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setHideInformationMirroringState(Z)V
    .locals 2

    .line 321
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mIsHideInformationMirroring:Z

    if-eq v1, p1, :cond_0

    .line 322
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mIsHideInformationMirroring:Z

    .line 323
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    :cond_0
    return-void
.end method

.method public setLaunchAnimationRunning(Z)V
    .locals 2

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mCurrentState:Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    if-ne p1, v1, :cond_0

    return-void

    .line 271
    :cond_0
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;->mIsLaunchAnimationRunning:Z

    .line 272
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->apply(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$State;)V

    return-void
.end method

.method public setNavigationDark(Z)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getSystemUiVisibility()I

    move-result v0

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x10

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, -0x11

    .line 316
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    return-void
.end method

.method public setWindowTouchable(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 278
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 282
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 283
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public wallpaperTypeChanged()V
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_0

    goto :goto_0

    .line 356
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mStatusBarView:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method
