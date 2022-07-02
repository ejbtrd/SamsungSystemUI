.class public Lcom/android/systemui/qs/QSContainerImpl;
.super Landroid/widget/FrameLayout;
.source "QSContainerImpl.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private mBackground:Landroid/view/View;

.field private mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mBottomLeftRadius:I

.field private mBottomRightRadius:I

.field private mClippingEnabled:Z

.field private mContentPadding:I

.field private mCutOutHeight:I

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mFancyClippingBottom:I

.field private final mFancyClippingPath:Landroid/graphics/Path;

.field private final mFancyClippingRadii:[F

.field private mFancyClippingTop:I

.field private mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field private mHeightOverride:I

.field private mKeyguardShowing:Z

.field private mNavBarInset:I

.field mNavBarKeyboardButtonShowing:Z

.field private mNotificationCount:I

.field private mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

.field private mQSDetail:Landroid/view/View;

.field private mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

.field private mQsDisabled:Z

.field private mQsExpansion:F

.field private mSideMargins:I

.field private final mSizePoint:Landroid/graphics/Point;

.field private mStatusBarHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/16 p1, 0x8

    new-array p1, p1, [F

    .line 60
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRadii:[F

    .line 61
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 77
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNavBarInset:I

    .line 94
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNotificationCount:I

    .line 109
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private updateBackgroundRound(F)V
    .locals 7

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNotificationCount:I

    .line 335
    :cond_1
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getAlphaAnimatedFraction(F)F

    move-result p1

    .line 336
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNotificationCount:I

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mKeyguardShowing:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v0, p1

    .line 337
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez p1, :cond_4

    .line 338
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 339
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$color;->sec_panel_background_color_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 340
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_4
    const/16 v1, 0x8

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 342
    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBottomLeftRadius:I

    int-to-float v4, v3

    aput v4, v1, v2

    const/4 v2, 0x1

    int-to-float v4, v3

    aput v4, v1, v2

    const/4 v2, 0x2

    int-to-float v4, v3

    aput v4, v1, v2

    const/4 v2, 0x3

    int-to-float v4, v3

    aput v4, v1, v2

    int-to-float v2, v3

    mul-float/2addr v2, v0

    const/4 v4, 0x4

    aput v2, v1, v4

    int-to-float v2, v3

    mul-float/2addr v2, v0

    const/4 v3, 0x5

    aput v2, v1, v3

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBottomRightRadius:I

    int-to-float v5, v2

    mul-float/2addr v5, v0

    const/4 v6, 0x6

    aput v5, v1, v6

    int-to-float v2, v2

    mul-float/2addr v2, v0

    const/4 v5, 0x7

    aput v2, v1, v5

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    .line 347
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRadii:[F

    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBottomLeftRadius:I

    int-to-float v2, v1

    mul-float/2addr v2, v0

    aput v2, p1, v4

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 348
    aput v1, p1, v3

    .line 349
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBottomRightRadius:I

    int-to-float v2, v1

    mul-float/2addr v2, v0

    aput v2, p1, v6

    int-to-float v1, v1

    mul-float/2addr v1, v0

    .line 350
    aput v1, p1, v5

    .line 351
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateClippingPath()V

    :goto_1
    return-void
.end method

.method private updateClippingPath()V
    .locals 10

    .line 496
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 497
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    if-nez v0, :cond_0

    .line 498
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_side_paddings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 504
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v0, 0x0

    .line 507
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET_BG:Z

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v2, v0

    :goto_0
    move v4, v2

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    int-to-float v5, v2

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    :goto_1
    move v6, v0

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingBottom:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRadii:[F

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->addRoundRect(FFFF[FLandroid/graphics/Path$Direction;)V

    .line 513
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method private updatePaddingsAndMargins(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)V
    .locals 5

    const/4 p1, 0x0

    move p2, p1

    .line 383
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    if-ge p2, v0, :cond_6

    .line 384
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 385
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarHeight:I

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCutOutHeight:I

    :goto_1
    if-eqz v1, :cond_1

    move v3, p1

    goto :goto_2

    .line 386
    :cond_1
    iget v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNavBarInset:I

    .line 387
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-ne v0, v4, :cond_2

    move v2, p1

    .line 391
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-ne v0, v4, :cond_4

    if-eqz v1, :cond_3

    .line 394
    iget-object v3, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getHeaderTopMargin(Landroid/content/Context;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_3
    move v3, p1

    :cond_4
    if-eqz v1, :cond_5

    .line 397
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    if-ne v0, v1, :cond_5

    move v2, p1

    .line 400
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 401
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getPaddingStart()I

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 403
    invoke-virtual {v4}, Landroid/widget/ScrollView;->getPaddingEnd()I

    move-result v4

    .line 400
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method calculateContainerBottom()I
    .locals 3

    .line 364
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 365
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    goto :goto_1

    .line 369
    :cond_1
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 367
    invoke-virtual {v2}, Lcom/android/systemui/qs/NonInterceptingScrollView;->getScrollRange()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 368
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 366
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 369
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    add-int/2addr p0, v0

    :goto_1
    return p0
.end method

.method protected calculateContainerHeight()I
    .locals 3

    .line 356
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    .line 358
    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p0

    goto :goto_1

    .line 360
    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr p0, v0

    .line 359
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p0, v1

    :goto_1
    return p0
.end method

.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, p3

    .line 263
    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    if-ne p1, p2, :cond_1

    return-void

    .line 264
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    .line 265
    sget-boolean p2, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET_BG:Z

    if-eqz p2, :cond_3

    .line 266
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 p3, 0x8

    :cond_2
    invoke-virtual {p0, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    neg-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 237
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 239
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " updateClippingPath: top("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") bottom("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingBottom:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") mClippingEnabled("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 521
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " WindowsInsetData : mNavBarInset("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNavBarInset:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") mCutoutheight("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCutOutHeight:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public gatherState()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 550
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "QSContainerImpl state :: "

    .line 551
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 552
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   mHeader  visibility : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mBackground  visibiliy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   mNavBarInset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNavBarInset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mCutOutHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCutOutHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mStatusBarHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mKeyguardShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mKeyguardShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mQsExpansion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mQsDisabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsDisabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getContainerHeight()I
    .locals 3

    .line 214
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 215
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 216
    :goto_0
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v1, :cond_2

    if-eqz v2, :cond_1

    int-to-float v0, v0

    .line 218
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_panel_height_ratio_tablet:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 219
    iget v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarHeight:I

    add-int/2addr v0, v1

    .line 220
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$dimen;->sec_style_qs_header_status_bar_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v0, p0

    goto :goto_1

    .line 222
    :cond_1
    iget p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNavBarInset:I

    sub-int/2addr v0, p0

    :cond_2
    :goto_1
    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isDarkPanelBgColor()Z
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/SecQuickStatusBarHeader;->isDarkPanelBgColor()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 0

    .line 249
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 148
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v0

    sub-int/2addr v1, v0

    if-gez v1, :cond_0

    .line 152
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10502a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 155
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCutOutHeight:I

    if-eq v0, v1, :cond_2

    .line 156
    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCutOutHeight:I

    goto :goto_0

    .line 159
    :cond_1
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCutOutHeight:I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 160
    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mCutOutHeight:I

    .line 163
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getNavBarHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNavBarInset:I

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, v0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->updatePaddingsAndMargins(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)V

    .line 180
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSizePoint:Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 114
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 115
    sget v0, Lcom/android/systemui/R$id;->expanded_qs_scroll_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/NonInterceptingScrollView;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSPanelContainer:Lcom/android/systemui/qs/NonInterceptingScrollView;

    .line 116
    sget v0, Lcom/android/systemui/R$id;->qs_detail:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    .line 117
    sget v0, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    .line 118
    sget v0, Lcom/android/systemui/R$id;->sec_qs_customize:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    const/4 v0, 0x2

    .line 119
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 121
    sget v0, Lcom/android/systemui/R$id;->quick_settings_background:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    .line 122
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET_BG:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_start:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBottomRightRadius:I

    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBottomLeftRadius:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 256
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 257
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    .line 258
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateClippingPath()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->getContainerHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 188
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public performClick()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public setExpansion(F)V
    .locals 0

    .line 373
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    .line 377
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public setFancyClipping(IIIZ)V
    .locals 4

    .line 449
    iget-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingRadii:[F

    const/4 v0, 0x4

    aget v1, p2, v0

    int-to-float p3, p3

    cmpl-float v1, v1, p3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 450
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-nez v1, :cond_0

    .line 451
    aput p3, p2, v0

    const/4 v0, 0x5

    .line 452
    aput p3, p2, v0

    const/4 v0, 0x6

    .line 453
    aput p3, p2, v0

    const/4 v0, 0x7

    .line 454
    aput p3, p2, v0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v2

    .line 459
    :goto_0
    iget p3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    if-eqz p3, :cond_1

    .line 460
    iput v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingTop:I

    move p2, v3

    .line 463
    :cond_1
    iget p3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingBottom:I

    if-eq p3, p1, :cond_3

    .line 464
    iget-boolean p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mKeyguardShowing:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    :cond_2
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mFancyClippingBottom:I

    move p2, v3

    .line 485
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    if-eq p1, p4, :cond_4

    .line 486
    iput-boolean p4, p0, Lcom/android/systemui/qs/QSContainerImpl;->mClippingEnabled:Z

    goto :goto_1

    :cond_4
    move v3, p2

    :goto_1
    if-eqz v3, :cond_5

    .line 491
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateClippingPath()V

    :cond_5
    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    .line 307
    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mHeightOverride:I

    .line 308
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateExpansion()V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 0

    .line 532
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mKeyguardShowing:Z

    return-void
.end method

.method public setShowHideKeyboardButton(Z)V
    .locals 0

    .line 537
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mNavBarKeyboardButtonShowing:Z

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 542
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 543
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET_BG:Z

    if-eqz p1, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateBackgroundHeight()V

    :cond_0
    return-void
.end method

.method public updateBackgroundHeight()V
    .locals 1

    .line 325
    iget v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQsExpansion:F

    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateBackgroundRound(F)V

    return-void
.end method

.method public updateExpansion()V
    .locals 5

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->calculateContainerHeight()I

    move-result v0

    .line 313
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET_BG:Z

    if-eqz v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->calculateContainerBottom()I

    move-result v2

    .line 314
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setBottom(I)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/view/View;->setBottom(I)V

    .line 316
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 317
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainerImpl;->mQSDetail:Landroid/view/View;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    add-int/2addr v4, v2

    sub-int/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/view/View;->setBottom(I)V

    if-eqz v1, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->updateBackgroundHeight()V

    :cond_1
    return-void
.end method

.method updateResources(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)V
    .locals 3

    .line 281
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->notification_side_paddings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 282
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->notification_shade_content_margin_horizontal:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 284
    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    .line 285
    :cond_0
    iput v1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mContentPadding:I

    .line 286
    iput v0, p0, Lcom/android/systemui/qs/QSContainerImpl;->mSideMargins:I

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSContainerImpl;->updatePaddingsAndMargins(Lcom/android/systemui/qs/QSPanelController;Lcom/android/systemui/qs/SecQuickStatusBarHeaderController;)V

    .line 291
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET_BG:Z

    if-eqz p1, :cond_1

    .line 292
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    if-eqz p2, :cond_1

    .line 293
    iget-object p2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$color;->sec_panel_background_color_tablet:I

    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 294
    iget-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackground:Landroid/view/View;

    iget-object p2, p0, Lcom/android/systemui/qs/QSContainerImpl;->mBackgroundDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :cond_1
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/QSContainerImpl;->mStatusBarHeight:I

    return-void
.end method
