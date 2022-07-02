.class public Lcom/android/systemui/statusbar/notification/stack/AmbientState;
.super Ljava/lang/Object;
.source "AmbientState.java"

# interfaces
.implements Lcom/android/systemui/util/PanelScreenShotLogger$LogProvider;


# instance fields
.field private mActivatedChild:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

.field private mAppearFraction:F

.field private mAppearing:Z

.field private mBaseZHeight:I

.field private final mBypassController:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;

.field private mContentHeight:I

.field private mCurrentScrollVelocity:F

.field private mDimmed:Z

.field private mDismissAllInProgress:Z

.field private mDozeAmount:F

.field private mDozing:Z

.field private mExpandingVelocity:F

.field private mExpansionChanging:Z

.field private mExpansionFraction:F

.field private mHasAlertEntries:Z

.field private mHideAmount:F

.field private mHideSensitive:Z

.field private mIntrinsicPadding:I

.field private mIsShadeOpening:Z

.field private mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field private mLayoutHeight:I

.field private mLayoutMinHeight:I

.field private mMaxHeadsUpTranslation:F

.field private mNotificationScrimTop:F

.field private mOnPulseHeightChangedListener:Ljava/lang/Runnable;

.field private mOverExpansion:F

.field private mOverScrollBottomAmount:F

.field private mOverScrollTopAmount:F

.field private mPanelFullWidth:Z

.field private mPanelTracking:Z

.field private mPulseHeight:F

.field private mPulsing:Z

.field private mQsCustomizerShowing:Z

.field private mScrollY:I

.field private final mSectionProvider:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

.field private mShadeExpanded:Z

.field private mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private mStackEndHeight:F

.field private mStackHeight:F

.field private mStackTranslation:F

.field private mStackY:F

.field private mStatusBarState:I

.field private mTopPadding:I

.field private mTrackedHeadsUpRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mUnlockHintRunning:Z

.field private mZDistanceBetweenElements:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;)V
    .locals 1

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x47c35000    # 100000.0f

    .line 89
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    .line 98
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    .line 101
    iput v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    .line 174
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mSectionProvider:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    .line 175
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mBypassController:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->reload(Landroid/content/Context;)V

    return-void
.end method

.method private static getBaseHeight(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public static getNotificationLaunchHeight(Landroid/content/Context;)I
    .locals 0

    .line 216
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getZDistanceBetweenElements(Landroid/content/Context;)I

    move-result p0

    mul-int/lit8 p0, p0, 0x4

    return p0
.end method

.method private static getZDistanceBetweenElements(Landroid/content/Context;)I
    .locals 1

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->z_distance_between_notifications:I

    .line 205
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    const/4 v0, 0x1

    .line 204
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public gatherState()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 388
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 389
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "AmbientState Log : "

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x1b

    new-array v1, v1, [Ljava/lang/Object;

    .line 392
    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    .line 399
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 400
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDimmed:Z

    const-string v3, "T"

    const-string v4, "F"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    const/4 v5, 0x1

    aput-object v2, v1, v5

    const/4 v2, 0x2

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollTopAmount:F

    .line 401
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x3

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollBottomAmount:F

    .line 402
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x4

    .line 403
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideSensitive:Z

    if-eqz v5, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    move-object v5, v4

    :goto_1
    aput-object v5, v1, v2

    const/4 v2, 0x5

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    .line 404
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x6

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutHeight:I

    .line 405
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v2, 0x7

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    .line 406
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x8

    .line 407
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    if-eqz v5, :cond_2

    move-object v5, v3

    goto :goto_2

    :cond_2
    move-object v5, v4

    :goto_2
    aput-object v5, v1, v2

    const/16 v2, 0x9

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    .line 408
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0xa

    .line 409
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDismissAllInProgress:Z

    if-eqz v5, :cond_3

    move-object v5, v3

    goto :goto_3

    :cond_3
    move-object v5, v4

    :goto_3
    aput-object v5, v1, v2

    const/16 v2, 0xb

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMinHeight:I

    .line 410
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0xc

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mZDistanceBetweenElements:I

    .line 411
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0xd

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mBaseZHeight:I

    .line 412
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0xe

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mCurrentScrollVelocity:F

    .line 413
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0xf

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarState:I

    .line 414
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x10

    iget v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandingVelocity:F

    .line 415
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v2

    const/16 v2, 0x11

    .line 416
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelTracking:Z

    if-eqz v5, :cond_4

    move-object v5, v3

    goto :goto_4

    :cond_4
    move-object v5, v4

    :goto_4
    aput-object v5, v1, v2

    const/16 v2, 0x12

    .line 417
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    if-eqz v5, :cond_5

    move-object v5, v3

    goto :goto_5

    :cond_5
    move-object v5, v4

    :goto_5
    aput-object v5, v1, v2

    const/16 v2, 0x13

    .line 418
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelFullWidth:Z

    if-eqz v5, :cond_6

    move-object v5, v3

    goto :goto_6

    :cond_6
    move-object v5, v4

    :goto_6
    aput-object v5, v1, v2

    const/16 v2, 0x14

    .line 419
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mUnlockHintRunning:Z

    if-eqz v5, :cond_7

    goto :goto_7

    :cond_7
    move-object v3, v4

    :goto_7
    aput-object v3, v1, v2

    const/16 v2, 0x15

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    .line 420
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x16

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverExpansion:F

    .line 421
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x17

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mNotificationScrimTop:F

    .line 422
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x18

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    .line 423
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x19

    iget v3, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    .line 424
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    .line 425
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "      mScrollY=%s mDimmed=%s mOverScrollTopAmount=%s mOverScrollBottomAmount=%s\n      mHideSensitive=%s mStackTranslation=%s\n      mLayoutHeight=%s mTopPadding=%s mShadeExpanded=%s mMaxHeadsUpTranslation=%s\n      mDismissAllInProgress=%s mLayoutMinHeight=%s mZDistanceBetweenElements=%s mBaseZHeight=%s\n      mCurrentScrollVelocity=%s mStatusBarState=%s mExpandingVelocity=%s\n      mPanelTracking=%s mExpansionChanging=%s mPanelFullWidth=%s mUnlockHintRunning=%s mExpansionFraction=%s\n      mOverExpansion=%s mNotificationScrimTop=%s mPulseHeight=%s mDozeAmount=%s mHideAmount=%s"

    .line 392
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 426
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-object p0
.end method

.method public getAppearFraction()F
    .locals 0

    .line 698
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearFraction:F

    return p0
.end method

.method public getBaseZHeight()I
    .locals 0

    .line 224
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mBaseZHeight:I

    return p0
.end method

.method public getCurrentScrollVelocity()F
    .locals 0

    .line 497
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mCurrentScrollVelocity:F

    return p0
.end method

.method public getExpandingVelocity()F
    .locals 0

    .line 521
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandingVelocity:F

    return p0
.end method

.method public getExpansionFraction()F
    .locals 0

    .line 149
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    return p0
.end method

.method public getHideAmount()F
    .locals 0

    .line 272
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    return p0
.end method

.method public getInnerHeight()I
    .locals 1

    const/4 v0, 0x0

    .line 363
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getInnerHeight(Z)I

    move-result p0

    return p0
.end method

.method public getInnerHeight(Z)I
    .locals 3

    .line 371
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0

    .line 374
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMinHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mContentHeight:I

    .line 375
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    sub-int/2addr v1, v2

    .line 374
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz p1, :cond_1

    return v0

    .line 379
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 380
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    invoke-static {v0, p1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public getLastVisibleBackgroundChild()Lcom/android/systemui/statusbar/notification/row/ExpandableView;
    .locals 0

    .line 489
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-object p0
.end method

.method public getMaxHeadsUpTranslation()F
    .locals 0

    .line 447
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    return p0
.end method

.method public getNotificationScrimTop()F
    .locals 0

    .line 286
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mNotificationScrimTop:F

    return p0
.end method

.method getOverExpansion()F
    .locals 0

    .line 200
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverExpansion:F

    return p0
.end method

.method public getOverScrollAmount(Z)F
    .locals 0

    if-eqz p1, :cond_0

    .line 335
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollTopAmount:F

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollBottomAmount:F

    :goto_0
    return p0
.end method

.method public getPulseHeight()F
    .locals 1

    .line 630
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    const v0, 0x47c35000    # 100000.0f

    cmpl-float v0, p0, v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public getScrollY()I
    .locals 0

    .line 235
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    return p0
.end method

.method public getSectionProvider()Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mSectionProvider:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;

    return-object p0
.end method

.method public getShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 0

    .line 468
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-object p0
.end method

.method public getStackEndHeight()F
    .locals 0

    .line 114
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackEndHeight:F

    return p0
.end method

.method public getStackHeight()F
    .locals 0

    .line 163
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    return p0
.end method

.method public getStackTranslation()F
    .locals 0

    .line 343
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    return p0
.end method

.method public getStackY()F
    .locals 0

    .line 136
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    return p0
.end method

.method public getTopPadding()F
    .locals 0

    .line 355
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    int-to-float p0, p0

    return p0
.end method

.method public getTrackedHeadsUpRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTrackedHeadsUpRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isAboveShelf()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 690
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTrackedHeadsUpRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getZDistanceBetweenElements()I
    .locals 0

    .line 231
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mZDistanceBetweenElements:I

    return p0
.end method

.method public isBypassEnabled()Z
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mBypassController:Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$BypassController;->isBypassEnabled()Z

    move-result p0

    return p0
.end method

.method public isDimmed()Z
    .locals 1

    .line 304
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDimmed:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulseExpanding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDozing()Z
    .locals 0

    .line 308
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    return p0
.end method

.method public isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 1

    .line 597
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isPulsing(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 1

    .line 587
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 588
    check-cast p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isExpansionChanging()Z
    .locals 0

    .line 517
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    return p0
.end method

.method public isFullyAwake()Z
    .locals 1

    .line 652
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFullyHidden()Z
    .locals 1

    .line 605
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHiddenAtAll()Z
    .locals 1

    .line 609
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isHideSensitive()Z
    .locals 0

    .line 312
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideSensitive:Z

    return p0
.end method

.method public isOnKeyguard()Z
    .locals 1

    .line 501
    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPanelTracking()Z
    .locals 0

    .line 548
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelTracking:Z

    return p0
.end method

.method public isPulseExpanding()Z
    .locals 2

    .line 431
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    const v1, 0x47c35000    # 100000.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPulsing(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    .line 544
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsing:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isAlerting()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQsCustomizerShowing()Z
    .locals 0

    .line 568
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mQsCustomizerShowing:Z

    return p0
.end method

.method public isShadeExpanded()Z
    .locals 0

    .line 435
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    return p0
.end method

.method public isShadeOpening()Z
    .locals 0

    .line 192
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsShadeOpening:Z

    return p0
.end method

.method public isUnlockHintRunning()Z
    .locals 0

    .line 564
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mUnlockHintRunning:Z

    return p0
.end method

.method public reload(Landroid/content/Context;)V
    .locals 0

    .line 183
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getZDistanceBetweenElements(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mZDistanceBetweenElements:I

    .line 184
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getBaseHeight(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mBaseZHeight:I

    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mActivatedChild:Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    return-void
.end method

.method public setAppearFraction(F)V
    .locals 0

    .line 694
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearFraction:F

    return-void
.end method

.method public setAppearing(Z)V
    .locals 0

    .line 613
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mAppearing:Z

    return-void
.end method

.method public setContentHeight(I)V
    .locals 0

    .line 472
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mContentHeight:I

    return-void
.end method

.method public setCurrentScrollVelocity(F)V
    .locals 0

    .line 493
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mCurrentScrollVelocity:F

    return-void
.end method

.method public setDimmed(Z)V
    .locals 0

    .line 253
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDimmed:Z

    return-void
.end method

.method public setDismissAllInProgress(Z)V
    .locals 0

    .line 451
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDismissAllInProgress:Z

    return-void
.end method

.method public setDozeAmount(F)V
    .locals 1

    .line 638
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 639
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozeAmount:F

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    :cond_0
    const p1, 0x47c35000    # 100000.0f

    .line 642
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPulseHeight(F)V

    :cond_1
    return-void
.end method

.method public setDozing(Z)V
    .locals 0

    .line 258
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mDozing:Z

    return-void
.end method

.method public setExpandingVelocity(F)V
    .locals 0

    .line 509
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpandingVelocity:F

    return-void
.end method

.method public setExpansionChanging(Z)V
    .locals 0

    .line 513
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionChanging:Z

    return-void
.end method

.method public setExpansionFraction(F)V
    .locals 0

    .line 143
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mExpansionFraction:F

    return-void
.end method

.method public setHasAlertEntries(Z)V
    .locals 0

    .line 702
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHasAlertEntries:Z

    return-void
.end method

.method public setHideAmount(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 263
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    const v0, 0x47c35000    # 100000.0f

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setPulseHeight(F)V

    .line 267
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideAmount:F

    return-void
.end method

.method public setHideSensitive(Z)V
    .locals 0

    .line 290
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mHideSensitive:Z

    return-void
.end method

.method public setIntrinsicPadding(I)V
    .locals 0

    .line 576
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIntrinsicPadding:I

    return-void
.end method

.method public setIsShadeOpening(Z)V
    .locals 0

    .line 188
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mIsShadeOpening:Z

    return-void
.end method

.method public setLastVisibleBackgroundChild(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    .line 485
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLastVisibleBackgroundChild:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    return-void
.end method

.method public setLayoutHeight(I)V
    .locals 0

    .line 351
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutHeight:I

    return-void
.end method

.method public setLayoutMinHeight(I)V
    .locals 0

    .line 459
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mLayoutMinHeight:I

    return-void
.end method

.method public setMaxHeadsUpTranslation(F)V
    .locals 0

    .line 443
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mMaxHeadsUpTranslation:F

    return-void
.end method

.method public setNotificationScrimTop(F)V
    .locals 0

    .line 279
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mNotificationScrimTop:F

    return-void
.end method

.method public setOnPulseHeightChangedListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOnPulseHeightChangedListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setOverScrollAmount(FZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 321
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollTopAmount:F

    goto :goto_0

    .line 323
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOverScrollBottomAmount:F

    :goto_0
    return-void
.end method

.method public setPanelFullWidth(Z)V
    .locals 0

    .line 556
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelFullWidth:Z

    return-void
.end method

.method public setPanelTracking(Z)V
    .locals 0

    .line 525
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPanelTracking:Z

    return-void
.end method

.method public setPulseHeight(F)V
    .locals 1

    .line 621
    iget v0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 622
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulseHeight:F

    .line 623
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mOnPulseHeightChangedListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 624
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setPulsing(Z)V
    .locals 0

    .line 533
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mPulsing:Z

    return-void
.end method

.method public setQsCustomizerShowing(Z)V
    .locals 0

    .line 572
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mQsCustomizerShowing:Z

    return-void
.end method

.method public setScrollY(I)V
    .locals 1

    const/4 v0, 0x0

    .line 245
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mScrollY:I

    return-void
.end method

.method public setShadeExpanded(Z)V
    .locals 0

    .line 439
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShadeExpanded:Z

    return-void
.end method

.method public setShelf(Lcom/android/systemui/statusbar/NotificationShelf;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    return-void
.end method

.method public setStackEndHeight(F)V
    .locals 0

    .line 122
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackEndHeight:F

    return-void
.end method

.method public setStackHeight(F)V
    .locals 0

    .line 156
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackHeight:F

    return-void
.end method

.method public setStackTranslation(F)V
    .locals 0

    .line 347
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackTranslation:F

    return-void
.end method

.method public setStackY(F)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStackY:F

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 0

    .line 505
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mStatusBarState:I

    return-void
.end method

.method public setTopPadding(I)V
    .locals 0

    .line 359
    iput p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTopPadding:I

    return-void
.end method

.method public setTrackedHeadsUpRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 664
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->mTrackedHeadsUpRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method
