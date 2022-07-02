.class public Lcom/android/systemui/volume/util/BlurEffect;
.super Ljava/lang/Object;
.source "BlurEffect.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSemWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

.field private final mStatusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/util/StatusBarWrapper;Lcom/android/systemui/volume/util/SemWindowManagerWrapper;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/volume/util/BlurEffect;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/volume/util/BlurEffect;->mStatusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    .line 33
    iput-object p3, p0, Lcom/android/systemui/volume/util/BlurEffect;->mSemWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    return-void
.end method

.method private isBlurDisabled()Z
    .locals 0

    .line 147
    const-class p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p0

    return p0
.end method

.method private makeBitmap(Landroid/view/View;[I)Landroid/graphics/Bitmap;
    .locals 13

    .line 109
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/systemui/volume/util/BlurEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/android/systemui/volume/util/BlurEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 111
    iget-object v3, p0, Lcom/android/systemui/volume/util/BlurEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 112
    iget-object v4, p0, Lcom/android/systemui/volume/util/BlurEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$dimen;->volume_panel_screen_width_threshold:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 113
    iget-object v5, p0, Lcom/android/systemui/volume/util/BlurEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1050209

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 114
    iget-object v6, p0, Lcom/android/systemui/volume/util/BlurEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->volume_panel_captured_blur_space:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 115
    iget-object v7, p0, Lcom/android/systemui/volume/util/BlurEffect;->mStatusBarWrapper:Lcom/android/systemui/volume/util/StatusBarWrapper;

    invoke-virtual {v7}, Lcom/android/systemui/volume/util/StatusBarWrapper;->getCutoutHeight()I

    move-result v7

    .line 116
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v8}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureHintEnabled()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_0

    .line 117
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isNavigationBarGestureWhileHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v9

    goto :goto_0

    :cond_0
    move v0, v10

    .line 118
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/volume/util/BlurEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v8, v11, :cond_1

    move v8, v9

    goto :goto_1

    :cond_1
    move v8, v10

    :goto_1
    if-eqz v8, :cond_2

    move v11, v3

    goto :goto_2

    :cond_2
    move v11, v2

    :goto_2
    if-le v11, v4, :cond_3

    move v4, v9

    goto :goto_3

    :cond_3
    move v4, v10

    .line 120
    :goto_3
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v11

    if-nez v11, :cond_5

    if-eqz v4, :cond_4

    goto :goto_4

    :cond_4
    move v4, v10

    goto :goto_5

    :cond_5
    :goto_4
    move v4, v9

    .line 123
    :goto_5
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_8

    .line 124
    aget v1, p2, v9

    .line 125
    aget p2, p2, v10

    sub-int/2addr v2, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    sub-int/2addr v2, p2

    add-int/2addr v2, v7

    add-int/2addr v2, v6

    if-nez v4, :cond_6

    if-eqz v0, :cond_7

    :cond_6
    move v5, v10

    :cond_7
    add-int/2addr v2, v5

    .line 126
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p2, v1

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_7

    .line 128
    :cond_8
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    if-ne v1, v9, :cond_b

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v3, v1

    aget v1, p2, v9

    sub-int/2addr v3, v1

    if-nez v4, :cond_a

    if-eqz v0, :cond_9

    goto :goto_6

    :cond_9
    move v5, v10

    :cond_a
    :goto_6
    add-int v1, v3, v5

    .line 130
    aget v2, p2, v10

    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    add-int/2addr p2, v1

    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_7

    .line 134
    :cond_b
    aget v1, p2, v10

    .line 135
    aget v2, p2, v9

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, v1

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 140
    iget-object v3, p0, Lcom/android/systemui/volume/util/BlurEffect;->mSemWindowManagerWrapper:Lcom/android/systemui/volume/util/SemWindowManagerWrapper;

    iget-object p0, p0, Lcom/android/systemui/volume/util/BlurEffect;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, p2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz v8, :cond_c

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    goto :goto_8

    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    :goto_8
    if-eqz v8, :cond_d

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_9

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    .line 140
    :goto_9
    invoke-virtual {v3, p0, v4, p2, p1}, Lcom/android/systemui/volume/util/SemWindowManagerWrapper;->capturedBlurScreenshot(Landroid/content/Context;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private setBlurEffect(Landroid/view/View;Landroid/view/SemBlurInfo;)V
    .locals 1

    const/4 p0, 0x0

    .line 103
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 v0, 0x1e

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 105
    invoke-virtual {p1, p2}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    return-void
.end method


# virtual methods
.method public hideBlur(Landroid/view/View;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x4

    .line 98
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 99
    invoke-virtual {p1, p0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    return-void
.end method

.method public setBlurDisabled(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x4

    .line 90
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    .line 91
    invoke-virtual {p1, p0}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    return-void
.end method

.method public setCapturedBlur(Landroid/widget/ImageView;Ljava/util/function/Supplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            "Ljava/util/function/Supplier<",
            "[I>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/util/BlurEffect;->isBlurDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/BlurEffect;->setBlurDisabled(Landroid/view/View;)V

    return-void

    .line 75
    :cond_1
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/util/BlurEffect;->makeBitmap(Landroid/view/View;[I)Landroid/graphics/Bitmap;

    move-result-object p2

    if-nez p2, :cond_2

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/BlurEffect;->setBlurDisabled(Landroid/view/View;)V

    return-void

    .line 81
    :cond_2
    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v2, 0x100

    .line 82
    invoke-virtual {v0, v2}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v2

    .line 83
    invoke-virtual {v2, p2}, Landroid/view/SemBlurInfo$Builder;->setBitmap(Landroid/graphics/Bitmap;)Landroid/view/SemBlurInfo$Builder;

    .line 84
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 86
    invoke-virtual {v0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/util/BlurEffect;->setBlurEffect(Landroid/view/View;Landroid/view/SemBlurInfo;)V

    return-void
.end method

.method public setRealTimeBlur(Landroid/view/View;IF)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->VOLUME_PARTIAL_BLUR:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/volume/util/BlurEffect;->isBlurDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 52
    :cond_1
    new-instance v0, Landroid/view/SemBlurInfo$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v1, 0x100

    .line 53
    invoke-virtual {v0, v1}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v1

    .line 54
    invoke-virtual {v1, p2}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object p2

    .line 55
    invoke-virtual {p2, p3}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    .line 57
    invoke-virtual {v0}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/util/BlurEffect;->setBlurEffect(Landroid/view/View;Landroid/view/SemBlurInfo;)V

    return-void

    .line 48
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/util/BlurEffect;->setBlurDisabled(Landroid/view/View;)V

    return-void
.end method
