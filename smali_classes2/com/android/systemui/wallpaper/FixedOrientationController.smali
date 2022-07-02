.class public Lcom/android/systemui/wallpaper/FixedOrientationController;
.super Ljava/lang/Object;
.source "FixedOrientationController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FixedOrientationController"


# instance fields
.field private mIsFixedOrientationApplied:Z

.field private mLastForcedRotation:I

.field private mLastHeight:I

.field private mLastWidth:I

.field private mShouldEnableScreenRotation:Z

.field private mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    const/4 v1, -0x1

    .line 23
    iput v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastWidth:I

    .line 24
    iput v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastHeight:I

    .line 25
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mIsFixedOrientationApplied:Z

    .line 28
    iput-object p1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mShouldEnableScreenRotation:Z

    return-void
.end method


# virtual methods
.method public applyPortraitRotation()V
    .locals 12

    .line 34
    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    if-nez v0, :cond_0

    return-void

    .line 36
    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mIsFixedOrientationApplied:Z

    if-eqz v0, :cond_2

    .line 37
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->clearPortraitRotation()V

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 41
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 42
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 43
    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 44
    iget-object v3, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    move v3, v4

    .line 46
    :goto_0
    sget-object v6, Lcom/android/systemui/wallpaper/FixedOrientationController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", isRtl = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", newR = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", oldR = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget v7, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    if-ne v0, v7, :cond_4

    iget v7, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastHeight:I

    if-ne v1, v7, :cond_4

    iget v7, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastWidth:I

    if-ne v2, v7, :cond_4

    const-string p0, "Same configuration."

    .line 49
    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-nez v2, :cond_5

    move v7, v5

    goto :goto_1

    :cond_5
    move v7, v4

    :goto_1
    if-nez v1, :cond_6

    move v4, v5

    :cond_6
    or-int/2addr v4, v7

    if-eqz v4, :cond_7

    return-void

    .line 57
    :cond_7
    iput v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    .line 58
    iput v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastHeight:I

    .line 59
    iput v2, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastWidth:I

    const/4 v4, 0x3

    const/4 v7, 0x0

    if-ne v0, v5, :cond_8

    .line 62
    iget-object v9, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    const/high16 v10, -0x3d4c0000    # -90.0f

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_2

    :cond_8
    if-ne v0, v4, :cond_9

    .line 64
    iget-object v9, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    const/high16 v10, 0x42b40000    # 90.0f

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_2

    :cond_9
    const/4 v9, 0x2

    if-ne v0, v9, :cond_a

    .line 66
    iget-object v9, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    const/high16 v10, 0x43340000    # 180.0f

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setRotation(F)V

    goto :goto_2

    .line 68
    :cond_a
    iget-object v9, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-virtual {v9, v7}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 71
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    if-eqz v9, :cond_10

    if-eq v0, v5, :cond_d

    if-ne v0, v4, :cond_b

    goto :goto_4

    :cond_b
    if-le v2, v1, :cond_c

    goto :goto_3

    :cond_c
    move v11, v2

    move v2, v1

    move v1, v11

    .line 97
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#2 port w = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput v2, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 101
    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_7

    :cond_d
    :goto_4
    if-le v1, v2, :cond_e

    goto :goto_5

    :cond_e
    move v11, v2

    move v2, v1

    move v1, v11

    :goto_5
    sub-int v0, v1, v2

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    if-eqz v3, :cond_f

    .line 82
    iget-object v3, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    neg-float v0, v0

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    goto :goto_6

    .line 84
    :cond_f
    iget-object v3, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 86
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    sub-int v3, v2, v1

    int-to-float v3, v3

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#2 land w = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iput v1, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 90
    iput v2, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 104
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 105
    iput-boolean v5, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mIsFixedOrientationApplied:Z

    :cond_10
    return-void
.end method

.method public clearPortraitRotation()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/FixedOrientationController;->TAG:Ljava/lang/String;

    const-string v1, "clearPortraitRotation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 115
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 116
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 118
    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    const/4 v0, 0x0

    .line 121
    iput v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mLastForcedRotation:I

    .line 123
    iget-object v1, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mTargetView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 124
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mIsFixedOrientationApplied:Z

    return-void
.end method

.method public isFixedOrientationApplied()Z
    .locals 0

    .line 128
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mIsFixedOrientationApplied:Z

    return p0
.end method

.method public isLockScreenRotationAllowed()Z
    .locals 2

    .line 132
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 135
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/FixedOrientationController;->mShouldEnableScreenRotation:Z

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
