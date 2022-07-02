.class public Lcom/android/systemui/qs/animator/QsOpenAnimator;
.super Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;
.source "QsOpenAnimator.java"

# interfaces
.implements Lcom/android/systemui/qs/animator/SecQSAnimator;


# instance fields
.field private YDiff:I

.field private loc:[I

.field private mAnimContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

.field private mBarController:Lcom/android/systemui/qs/bar/BarController;

.field private mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

.field private mBrightnessBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mBrightnessBarView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHeader:Landroid/view/View;

.field private mHeaderDateSettingAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeaderDateSettingContainer:Landroid/view/View;

.field private mHeaderIconClockAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mHeaderIconClockContainer:Landroid/view/View;

.field private mInterpolator:Landroid/view/animation/PathInterpolator;

.field private mMediaDeviceBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

.field private mMediaDeviceBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMediaDeviceBarView:Landroid/view/View;

.field private mMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

.field private mMediaPlayerBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mMediaPlayerBarView:Landroid/view/View;

.field private mPanelExpansion:F

.field private mPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private mQQSAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mQQSTileLayout:Landroid/view/View;

.field private mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

.field private mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/bar/BarController;Lcom/android/systemui/qs/animator/QsAnimationStateProvider;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 2

    .line 92
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;-><init>()V

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelExpansion:F

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 257
    iput-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->loc:[I

    .line 93
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mContext:Landroid/content/Context;

    .line 94
    iput-object p2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    .line 95
    iput-object p3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimStateProvider:Lcom/android/systemui/qs/animator/QsAnimationStateProvider;

    .line 96
    invoke-virtual {p3, p0}, Lcom/android/systemui/qs/animator/QsAnimationStateProvider;->setQsAnimator(Lcom/android/systemui/qs/animator/SecQSAnimator;)V

    .line 97
    iput-object p4, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->qs_open_anim_y_diff:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->YDiff:I

    .line 99
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ed70a3d    # 0.42f

    const p3, 0x3f147ae1    # 0.58f

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, v0, p3, p4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method private clearAnimationState()V
    .locals 2

    .line 322
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 324
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 325
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/4 v1, 0x0

    .line 326
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getEndDelay(Landroid/view/View;I)F
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->loc:[I

    iget-object v2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeader:Landroid/view/View;

    invoke-direct {p0, v0, p1, v2}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 248
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->loc:[I

    const/4 v0, 0x1

    aget p1, p1, v0

    add-int/2addr p1, p2

    .line 250
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsMinExpansionHeight()I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p1

    sub-float p1, p0, p1

    div-float/2addr p1, p0

    goto :goto_0

    :cond_0
    move p1, v1

    .line 254
    :goto_0
    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private getRelativePosition([ILandroid/view/View;Landroid/view/View;)V
    .locals 2

    .line 259
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    add-int/2addr v0, v1

    aput v0, p1, v1

    const/4 v0, 0x1

    .line 260
    aput v1, p1, v0

    .line 261
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method private getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V
    .locals 3

    .line 265
    instance-of v0, p2, Lcom/android/systemui/qs/QSContainerImpl;

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 268
    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 269
    aget v1, p1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    .line 270
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getRelativePositionInt([ILandroid/view/View;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getStartDelay(Landroid/view/View;I)F
    .locals 2

    .line 233
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 234
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->loc:[I

    iget-object v1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getRelativePosition([ILandroid/view/View;Landroid/view/View;)V

    .line 235
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->loc:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    add-int/lit8 p1, p1, 0x0

    .line 237
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsMinExpansionHeight()I

    move-result p2

    int-to-float p2, p2

    .line 238
    iget p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->YDiff:I

    sub-int/2addr p1, p0

    int-to-float p0, p1

    div-float/2addr p0, p2

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const p1, 0x3dcccccd    # 0.1f

    sub-float/2addr p0, p1

    .line 240
    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private onQsClipFinished(F)V
    .locals 0

    return-void
.end method


# virtual methods
.method public destroyQSViews()V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 342
    iput-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 343
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 344
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeader:Landroid/view/View;

    .line 345
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderIconClockContainer:Landroid/view/View;

    .line 346
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 347
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    .line 348
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    return-void
.end method

.method public gatherState()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "QsOpenAnimator ============================================= "

    .line 354
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : alpha = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " translationY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " visibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p0, "============================================================== "

    .line 358
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 293
    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    return-void
.end method

.method public onPanelClosed()V
    .locals 1

    .line 314
    invoke-super {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onPanelClosed()V

    .line 315
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 317
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->clearAnimationState()V

    .line 318
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    return-void
.end method

.method public onPanelOpened()V
    .locals 0

    .line 308
    invoke-super {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onPanelOpened()V

    .line 309
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    return-void
.end method

.method public onQsClipBoundChanged(F)V
    .locals 3

    .line 203
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v0, :cond_8

    .line 205
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 209
    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mState:I

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    if-ne v0, v1, :cond_1

    move p1, v2

    :cond_1
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-eqz v1, :cond_2

    cmpl-float v1, p1, v2

    if-nez v1, :cond_3

    .line 212
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->onQsClipFinished(F)V

    :cond_3
    cmpg-float v1, p1, v0

    if-gez v1, :cond_4

    move p1, v0

    :cond_4
    cmpl-float v0, p1, v2

    if-lez v0, :cond_5

    goto :goto_0

    :cond_5
    move v2, p1

    .line 218
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderIconClockAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 219
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 220
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQQSAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 221
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_6

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 222
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaDeviceBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 223
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaPlayerBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_8
    :goto_1
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 299
    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->onStateChanged(I)V

    .line 300
    iget-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateExpansionHeight()V

    .line 303
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    return-void
.end method

.method public setAnimaStateCallback(Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;)V
    .locals 0

    .line 288
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mStateChangeCallback:Lcom/android/systemui/qs/animator/QsAnimationStateProvider$AnimStateChangeCallback;

    return-void
.end method

.method public setPanelExpanding(Z)V
    .locals 0

    .line 332
    invoke-super {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->setPanelExpanding(Z)V

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    return-void
.end method

.method public setPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    return-void
.end method

.method public setQSClipBound(II)V
    .locals 0

    .line 275
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 277
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 278
    iget-object p2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQsMinExpansionHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 280
    iget p2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelExpansion:F

    cmpl-float p2, p2, p1

    if-eqz p2, :cond_1

    .line 281
    iput p1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelExpansion:F

    .line 282
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->onQsClipBoundChanged(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setQs(Lcom/android/systemui/plugins/qs/QS;)V
    .locals 0

    if-nez p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->destroyQSViews()V

    return-void

    .line 111
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 112
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->updateAnimators()V

    return-void
.end method

.method public updateAnimators()V
    .locals 10

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->isThereNoView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorBase;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$id;->header:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeader:Landroid/view/View;

    .line 129
    sget v1, Lcom/android/systemui/R$id;->quick_qs_status_icons:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "open_anim"

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderIconClockContainer:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeader:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->quick_qs_date_buttons:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeader:Landroid/view/View;

    sget v2, Lcom/android/systemui/R$id;->quick_qs_panel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 132
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQQSTileLayout:Landroid/view/View;

    .line 133
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarController;->getCollapsedBrightnessBar()Lcom/android/systemui/qs/bar/BrightnessBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBar:Lcom/android/systemui/qs/bar/BrightnessBar;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 134
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBarView:Landroid/view/View;

    .line 135
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarController;->getCollapsedMediaDeviceBar()Lcom/android/systemui/qs/bar/MediaDevicesBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaDeviceBar:Lcom/android/systemui/qs/bar/MediaDevicesBar;

    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaDeviceBarView:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarController;->getMediaPlayer()Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    if-eqz v0, :cond_3

    .line 138
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    :cond_3
    iput-object v2, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaPlayerBarView:Landroid/view/View;

    .line 140
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderIconClockContainer:Landroid/view/View;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    const-string v4, "alpha"

    .line 141
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderIconClockContainer:Landroid/view/View;

    new-array v3, v2, [F

    iget v5, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->YDiff:I

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x0

    aput v5, v3, v6

    const/4 v5, 0x1

    const/4 v7, 0x0

    aput v7, v3, v5

    const-string/jumbo v8, "translationY"

    .line 142
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderIconClockContainer:Landroid/view/View;

    .line 143
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderIconClockContainer:Landroid/view/View;

    .line 144
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 145
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderIconClockAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderIconClockContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_1

    .line 150
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    new-array v3, v2, [F

    iget v9, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->YDiff:I

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v3, v6

    aput v7, v3, v5

    .line 151
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    .line 153
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 156
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mHeaderDateSettingContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQQSTileLayout:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_2

    .line 159
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQQSTileLayout:Landroid/view/View;

    new-array v3, v2, [F

    iget v9, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->YDiff:I

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v3, v6

    aput v7, v3, v5

    .line 160
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQQSTileLayout:Landroid/view/View;

    .line 161
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQQSTileLayout:Landroid/view/View;

    .line 162
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 163
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 164
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mQQSAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 166
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBarView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 167
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBarView:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_3

    .line 168
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBarView:Landroid/view/View;

    new-array v3, v2, [F

    iget v9, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->YDiff:I

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v3, v6

    aput v7, v3, v5

    .line 169
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBarView:Landroid/view/View;

    .line 170
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBarView:Landroid/view/View;

    .line 171
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 172
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 174
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mBrightnessBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaDeviceBarView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 178
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaDeviceBarView:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_4

    .line 179
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaDeviceBarView:Landroid/view/View;

    new-array v3, v2, [F

    iget v9, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->YDiff:I

    neg-int v9, v9

    int-to-float v9, v9

    aput v9, v3, v6

    aput v7, v3, v5

    .line 180
    invoke-virtual {v0, v1, v8, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaDeviceBarView:Landroid/view/View;

    .line 181
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaDeviceBarView:Landroid/view/View;

    .line 182
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 183
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaDeviceBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 185
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaDeviceBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaPlayerBarView:Landroid/view/View;

    if-eqz v0, :cond_6

    .line 189
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaPlayerBarView:Landroid/view/View;

    new-array v3, v2, [F

    fill-array-data v3, :array_5

    .line 190
    invoke-virtual {v0, v1, v4, v3}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaPlayerBarView:Landroid/view/View;

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->YDiff:I

    neg-int v3, v3

    int-to-float v3, v3

    aput v3, v2, v6

    aput v7, v2, v5

    .line 191
    invoke-virtual {v0, v1, v8, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaPlayerBarView:Landroid/view/View;

    .line 192
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getStartDelay(Landroid/view/View;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaPlayerBarView:Landroid/view/View;

    .line 193
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->getEndDelay(Landroid/view/View;I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setEndDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mInterpolator:Landroid/view/animation/PathInterpolator;

    .line 194
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaPlayerBarAnimator:Lcom/android/systemui/qs/TouchAnimator;

    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mAnimContents:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mMediaPlayerBarView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    :cond_6
    iget v0, p0, Lcom/android/systemui/qs/animator/QsOpenAnimator;->mPanelExpansion:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/animator/QsOpenAnimator;->onQsClipBoundChanged(F)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
