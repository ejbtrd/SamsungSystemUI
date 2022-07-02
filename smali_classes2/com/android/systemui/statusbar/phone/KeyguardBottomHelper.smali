.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;
.super Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
.source "KeyguardBottomHelper.java"


# instance fields
.field private mIndicationArea:Landroid/widget/LinearLayout;

.field private mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field private final mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

.field private mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

.field private mPreviewAnimationStarted:Z

.field private mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

.field private mTargetedView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;)V

    .line 39
    check-cast p3, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->initIcons()V

    .line 41
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 42
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->initDimens()V

    return-void
.end method

.method private endMotion()V
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->isWaitingToLaunchApp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->startPreviewAnimation(Landroid/view/View;Z)V

    goto :goto_0

    .line 174
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mPreviewAnimationStarted:Z

    :goto_0
    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    return-void
.end method

.method private setPreviewAnimationStarted(Z)V
    .locals 0

    .line 251
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mPreviewAnimationStarted:Z

    .line 252
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mPreviewAnimationStarted:Z

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setShortcutPreviewShowing(Z)V

    return-void
.end method

.method private setTargetView()V
    .locals 5

    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setIsTargetView(Z)V

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setIsTargetView(Z)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    if-ne v0, v4, :cond_1

    .line 165
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setIsTargetView(Z)V

    .line 166
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setIsTargetView(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public animateHideLeftRightIcon()V
    .locals 4

    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    return-void
.end method

.method protected getIconAtPosition(FF)Landroid/view/View;
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->leftSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    return-object p0

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->rightSwipePossible()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 186
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method protected initDimens()V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_touch_target_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    return-void
.end method

.method protected initIcons()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getRightView()Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getRightView()Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationArea:Landroid/widget/LinearLayout;

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getIndicationView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->getCallback()Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V

    .line 65
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setCallback(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;)V

    return-void
.end method

.method public isOnAffordanceIcon(FF)Z
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->isOnIcon(Landroid/view/View;FF)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method protected isOnIcon(Landroid/view/View;FF)Z
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    .line 197
    aget v2, v0, v1

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    const/4 v3, 0x1

    .line 198
    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v4

    add-float/2addr v0, p1

    sub-float/2addr p2, v2

    float-to-double p1, p2

    sub-float/2addr p3, v0

    float-to-double v4, p3

    .line 200
    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p1

    .line 201
    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->mTouchTargetSize:I

    int-to-double v4, p0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    cmpg-double p0, p1, v4

    if-gtz p0, :cond_0

    move v1, v3

    :cond_0
    return v1
.end method

.method public isShortcutDCAnimationPlaying()Z
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->isPlayingDCAnimation()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->isPlayingDCAnimation()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public isShortcutPreviewAnimationPlaying()Z
    .locals 0

    .line 266
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mPreviewAnimationStarted:Z

    return p0
.end method

.method public isSwipingInProgress()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected leftSwipePossible()Z
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 101
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isMotionCancelled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    return v2

    .line 106
    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v1, :cond_1

    const-class v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 107
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isIccBlockedPermanently()Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 111
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v4, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-nez p0, :cond_2

    return v2

    .line 150
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 128
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setMotionCancelled(Z)V

    .line 133
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-nez v0, :cond_5

    return v2

    .line 137
    :cond_5
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-nez v0, :cond_6

    return p1

    .line 142
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->endMotion()V

    return p1

    .line 116
    :cond_7
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->getIconAtPosition(FF)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    if-eqz v1, :cond_8

    if-eq v1, v0, :cond_8

    goto :goto_0

    .line 122
    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setMotionCancelled(Z)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->startSwiping(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0, v0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->startPreviewAnimation(Landroid/view/View;Z)V

    .line 125
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 118
    :cond_9
    :goto_0
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setMotionCancelled(Z)V

    return v2
.end method

.method public reset(Z)V
    .locals 2

    const/4 p1, 0x0

    .line 239
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->setPreviewAnimationStarted(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1, p1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0, v0, v1, p1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V

    .line 243
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->reset()V

    .line 244
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->reset()V

    const/4 p1, 0x1

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setMotionCancelled(Z)V

    const/4 p1, 0x0

    .line 246
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 247
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationText:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method protected rightSwipePossible()Z
    .locals 0

    .line 215
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setQsExpanded(Z)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setQsExpanded(Z)V

    .line 282
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setQsExpanded(Z)V

    return-void
.end method

.method public startHintAnimation(ZLjava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method protected startPreviewAnimation(Landroid/view/View;Z)V
    .locals 4

    .line 79
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->setPreviewAnimationStarted(Z)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startPreviewAnimation() show = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardBottomHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0xc8

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 83
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationArea:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 84
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    if-ne p1, p2, :cond_0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_0

    .line 86
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    if-ne p1, p0, :cond_3

    .line 87
    invoke-virtual {p2, v3, v2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_0

    .line 90
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mIndicationArea:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p2, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 91
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mLeftIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    if-ne p1, p2, :cond_2

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setImageAlpha(FZ)V

    goto :goto_0

    .line 93
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mRightIcon:Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    if-ne p1, p0, :cond_3

    .line 94
    invoke-virtual {p2, v3, v2}, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;->setImageAlpha(FZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected startSwiping(Landroid/view/View;)V
    .locals 0

    .line 156
    check-cast p1, Lcom/android/systemui/statusbar/KeyguardRectangleAffordanceView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->mTargetedView:Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    .line 157
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;->setTargetView()V

    return-void
.end method

.method protected updateIcon(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZZ)V
    .locals 1

    .line 231
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p4, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    return-void
.end method

.method public updatePreviews()V
    .locals 0

    return-void
.end method
