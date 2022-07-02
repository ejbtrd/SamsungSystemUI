.class public Lcom/android/systemui/scrim/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"


# instance fields
.field private mChangeRunnable:Ljava/lang/Runnable;

.field private mChangeRunnableExecutor:Ljava/util/concurrent/Executor;

.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mColorLock:Ljava/lang/Object;

.field private final mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mColorLock"
        }
    .end annotation
.end field

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableBounds:Landroid/graphics/Rect;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private mExecutorLooper:Landroid/os/Looper;

.field private mTintColor:I

.field private final mTmpColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field private mViewAlpha:F


# direct methods
.method public static synthetic $r8$lambda$0hg1lN64kAlaRiHts8Cd8Pck26U(Lcom/android/systemui/scrim/ScrimView;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/scrim/ScrimView;->lambda$setColors$3(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$9tecKDmYQDIQrA495jylsEtksng(Lcom/android/systemui/scrim/ScrimView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/scrim/ScrimView;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$9y86aufUHnomsZcZTsxBAH-COfA(Lcom/android/systemui/scrim/ScrimView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/scrim/ScrimView;->lambda$setViewAlpha$5(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$HBabdK6y2c2HT3mbrXuC-nxzVDA(Lcom/android/systemui/scrim/ScrimView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/scrim/ScrimView;->lambda$setDrawable$1(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$l1DylaPD_MWF2Cf28dTAo5koSm0(Lcom/android/systemui/scrim/ScrimView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/scrim/ScrimView;->lambda$setClickable$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$lpuNPyn69nO_rwMPfDLtfvzEjbU(Lcom/android/systemui/scrim/ScrimView;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/scrim/ScrimView;->lambda$setTint$4(IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/scrim/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/scrim/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/scrim/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 53
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mColorLock:Ljava/lang/Object;

    .line 58
    new-instance p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mTmpColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 59
    iput p1, p0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    .line 85
    new-instance p1, Lcom/android/systemui/scrim/ScrimDrawable;

    invoke-direct {p1}, Lcom/android/systemui/scrim/ScrimDrawable;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 87
    new-instance p1, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 88
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutorLooper:Landroid/os/Looper;

    .line 89
    sget-object p1, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda6;->INSTANCE:Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda6;

    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutor:Ljava/util/concurrent/Executor;

    .line 90
    new-instance p1, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/scrim/ScrimView;)V

    invoke-direct {p0, p1}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private executeOnExecutor(Ljava/lang/Runnable;)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutorLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 291
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->updateColorWithTint(Z)V

    return-void
.end method

.method private synthetic lambda$setClickable$2(Z)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private synthetic lambda$setColors$3(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mColorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/scrim/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v1, p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 166
    monitor-exit v0

    return-void

    .line 168
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/scrim/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v1, p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 169
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-direct {p0, p2}, Lcom/android/systemui/scrim/ScrimView;->updateColorWithTint(Z)V

    return-void

    :catchall_0
    move-exception p0

    .line 169
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$setDrawable$1(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 113
    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 115
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 116
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v0, p0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 117
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private synthetic lambda$setTint$4(IZ)V
    .locals 1

    .line 203
    iget v0, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    if-ne v0, p1, :cond_0

    return-void

    .line 206
    :cond_0
    iput p1, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    .line 207
    invoke-direct {p0, p2}, Lcom/android/systemui/scrim/ScrimView;->updateColorWithTint(Z)V

    return-void
.end method

.method private synthetic lambda$setViewAlpha$5(F)V
    .locals 2

    .line 261
    iget v0, p0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 262
    iput p1, p0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    .line 264
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 265
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 266
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mChangeRunnableExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateColorWithTint(Z)V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v1, :cond_0

    .line 214
    check-cast v0, Lcom/android/systemui/scrim/ScrimDrawable;

    .line 215
    iget v1, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 216
    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    invoke-static {v2, v3, v1}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 218
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/scrim/ScrimDrawable;->setColor(IZ)V

    goto :goto_3

    .line 220
    :cond_0
    iget p1, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 222
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez p1, :cond_2

    .line 223
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/PorterDuffColorFilter;->getMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    .line 224
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/PorterDuffColorFilter;->getColor()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    if-eq v0, v1, :cond_5

    .line 225
    :cond_3
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    iget v1, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 228
    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 231
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 232
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 235
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz p1, :cond_6

    .line 236
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mChangeRunnableExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method


# virtual methods
.method protected canReceivePointerEvents()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public enableBottomEdgeConcave(Z)V
    .locals 1

    .line 310
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v0, :cond_0

    .line 311
    check-cast p0, Lcom/android/systemui/scrim/ScrimDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/scrim/ScrimDrawable;->setBottomEdgeConcave(Z)V

    :cond_0
    return-void
.end method

.method public enableRoundedCorners(Z)V
    .locals 1

    .line 329
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v0, :cond_0

    .line 330
    check-cast p0, Lcom/android/systemui/scrim/ScrimDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/scrim/ScrimDrawable;->setRoundedCornersEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mColorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/scrim/ScrimView;->mTmpColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    iget-object v2, p0, Lcom/android/systemui/scrim/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v1, v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 185
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mTmpColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    return-object p0

    :catchall_0
    move-exception p0

    .line 185
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 176
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getMainColor()I
    .locals 1

    .line 299
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v0, :cond_0

    .line 300
    check-cast p0, Lcom/android/systemui/scrim/ScrimDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/scrim/ScrimDrawable;->getMainColor()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getTint()I
    .locals 0

    .line 241
    iget p0, p0, Lcom/android/systemui/scrim/ScrimView;->mTintColor:I

    return p0
.end method

.method public getViewAlpha()F
    .locals 0

    .line 273
    iget p0, p0, Lcom/android/systemui/scrim/ScrimView;->mViewAlpha:F

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 131
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 133
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setBottomEdgePosition(I)V
    .locals 1

    .line 320
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v0, :cond_0

    .line 321
    check-cast p0, Lcom/android/systemui/scrim/ScrimDrawable;

    invoke-virtual {p0, p1}, Lcom/android/systemui/scrim/ScrimDrawable;->setBottomEdgePosition(I)V

    :cond_0
    return-void
.end method

.method public setChangeRunnable(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    .line 281
    iput-object p2, p0, Lcom/android/systemui/scrim/ScrimView;->mChangeRunnableExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setClickable(Z)V
    .locals 1

    .line 142
    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/scrim/ScrimView;Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 163
    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/scrim/ScrimView;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V

    invoke-direct {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void

    .line 161
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Colors cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setCornerRadius(I)V
    .locals 1

    .line 352
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, p0, Lcom/android/systemui/scrim/ScrimDrawable;

    if-eqz v0, :cond_0

    .line 353
    check-cast p0, Lcom/android/systemui/scrim/ScrimDrawable;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/scrim/ScrimDrawable;->setRoundedCorners(F)V

    :cond_0
    return-void
.end method

.method setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 112
    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/scrim/ScrimView;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDrawableBounds(FFFF)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 339
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    float-to-int p1, p1

    float-to-int p2, p2

    float-to-int p3, p3

    float-to-int p4, p4

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 342
    iget-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object p2, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawableBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 343
    iget-object p0, p0, Lcom/android/systemui/scrim/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;Landroid/os/Looper;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutor:Ljava/util/concurrent/Executor;

    .line 100
    iput-object p2, p0, Lcom/android/systemui/scrim/ScrimView;->mExecutorLooper:Landroid/os/Looper;

    return-void
.end method

.method public setTint(I)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/scrim/ScrimView;->setTint(IZ)V

    return-void
.end method

.method public setTint(IZ)V
    .locals 1

    .line 202
    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/scrim/ScrimView;IZ)V

    invoke-direct {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setViewAlpha(F)V
    .locals 2

    .line 257
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/scrim/ScrimView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/scrim/ScrimView;F)V

    invoke-direct {p0, v0}, Lcom/android/systemui/scrim/ScrimView;->executeOnExecutor(Ljava/lang/Runnable;)V

    return-void

    .line 258
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "alpha cannot be NaN: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
