.class public Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;
.super Landroid/window/DisplayAreaOrganizer;
.source "OneHandedBackgroundPanelOrganizer.java"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;
.implements Lcom/android/wm/shell/onehanded/OneHandedState$OnStateChangedListener;


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field mBackgroundSurface:Landroid/view/SurfaceControl;

.field private mBkgBounds:Landroid/graphics/Rect;

.field private final mContext:Landroid/content/Context;

.field private mCurrentState:I

.field private mParentLeash:Landroid/view/SurfaceControl;

.field private mStableInsets:Landroid/graphics/Rect;

.field private final mSurfaceSession:Landroid/view/SurfaceSession;

.field private mThemeColor:[F

.field private final mTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

.field private mTranslationFraction:F


# direct methods
.method public static synthetic $r8$lambda$9hXrfOvyhj15_8-cVjm9Z0vujuY(Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->lambda$createBackgroundSurface$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayLayout;Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 82
    invoke-direct {p0, p4}, Landroid/window/DisplayAreaOrganizer;-><init>(Ljava/util/concurrent/Executor;)V

    .line 57
    new-instance p2, Landroid/view/SurfaceSession;

    invoke-direct {p2}, Landroid/view/SurfaceSession;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mSurfaceSession:Landroid/view/SurfaceSession;

    .line 83
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p3, p1}, Lcom/android/wm/shell/onehanded/OneHandedSettingsUtil;->getTranslationFraction(Landroid/content/Context;)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mTranslationFraction:F

    .line 85
    sget-object p1, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$$ExternalSyntheticLambda0;

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 86
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->updateThemeColors()V

    return-void
.end method

.method private adjustColor(I)F
    .locals 0

    add-int/lit8 p1, p1, -0xa

    const/4 p0, 0x0

    .line 252
    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr p0, p1

    return p0
.end method

.method private synthetic lambda$createBackgroundSurface$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->detachBackgroundFromParent(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private updateThemeColors()V
    .locals 4

    .line 241
    new-instance v0, Landroidx/appcompat/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mContext:Landroid/content/Context;

    const v2, 0x10302e3

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 243
    sget v1, Lcom/android/wm/shell/R$color;->one_handed_tutorial_background_color:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 246
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->adjustColor(I)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 247
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->adjustColor(I)F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    .line 248
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->adjustColor(I)F

    move-result v0

    const/4 v2, 0x2

    aput v0, v1, v2

    iput-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mThemeColor:[F

    return-void
.end method


# virtual methods
.method createBackgroundSurface()V
    .locals 3

    .line 126
    new-instance v0, Landroid/view/SurfaceControl$Builder;

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v0, v1}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBkgBounds:Landroid/graphics/Rect;

    .line 127
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBkgBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->setColorLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 130
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setOpaque(Z)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string/jumbo v1, "one-handed-background-panel"

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    const-string v1, "OneHandedBackgroundPanelOrganizer"

    .line 132
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Builder;->setCallsite(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 136
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 137
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 138
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 139
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method detachBackgroundFromParent(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v1}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    .line 151
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_0

    .line 153
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v1, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2
    :goto_0
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "OneHandedBackgroundPanelOrganizer"

    .line 262
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  mBackgroundSurface="

    .line 263
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mBkgBounds="

    .line 265
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBkgBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mThemeColor="

    .line 267
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mThemeColor:[F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "  mTranslationFraction="

    .line 269
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mTranslationFraction:F

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(F)V

    return-void
.end method

.method isRegistered()Z
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;FF)V
    .locals 1

    .line 115
    iget-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mStableInsets:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBkgBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    add-int/2addr p2, p3

    .line 116
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p0, p3, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public onConfigurationChanged()V
    .locals 2

    .line 232
    invoke-direct {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->updateThemeColors()V

    .line 234
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mCurrentState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->showBackgroundPanelLayer()V

    return-void
.end method

.method public onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 92
    iput-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    return-void
.end method

.method public onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;)V
    .locals 4

    .line 163
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mStableInsets:Landroid/graphics/Rect;

    .line 165
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    .line 166
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result v1

    .line 167
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result p1

    int-to-float p1, p1

    iget v3, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mTranslationFraction:F

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v3, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mStableInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v3

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBkgBounds:Landroid/graphics/Rect;

    goto :goto_0

    .line 169
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->height()I

    move-result v1

    .line 170
    invoke-virtual {p1}, Lcom/android/wm/shell/common/DisplayLayout;->width()I

    move-result p1

    int-to-float p1, p1

    iget v3, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mTranslationFraction:F

    mul-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v3, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mStableInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v3

    invoke-direct {v0, v2, v2, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBkgBounds:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method onStart()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->createBackgroundSurface()V

    .line 179
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->showBackgroundPanelLayer()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    .line 257
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mCurrentState:I

    return-void
.end method

.method public onStopFinished()V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-nez p0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public registerOrganizer(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/window/DisplayAreaAppearedInfo;",
            ">;"
        }
    .end annotation

    .line 98
    invoke-super {p0, p1}, Landroid/window/DisplayAreaOrganizer;->registerOrganizer(I)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 99
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/DisplayAreaAppearedInfo;

    .line 101
    invoke-virtual {v1}, Landroid/window/DisplayAreaAppearedInfo;->getDisplayAreaInfo()Landroid/window/DisplayAreaInfo;

    move-result-object v2

    invoke-virtual {v1}, Landroid/window/DisplayAreaAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->onDisplayAreaAppeared(Landroid/window/DisplayAreaInfo;Landroid/view/SurfaceControl;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method removeBackgroundPanelLayer()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v0}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    .line 223
    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 224
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    return-void
.end method

.method showBackgroundPanelLayer()V
    .locals 3

    .line 194
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    if-nez v0, :cond_1

    .line 199
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->createBackgroundSurface()V

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 207
    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    invoke-interface {v0}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    const/4 v2, -0x1

    .line 210
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mThemeColor:[F

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mBackgroundSurface:Landroid/view/SurfaceControl;

    .line 212
    invoke-virtual {v0, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 213
    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public unregisterOrganizer()V
    .locals 1

    .line 108
    invoke-super {p0}, Landroid/window/DisplayAreaOrganizer;->unregisterOrganizer()V

    .line 109
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->removeBackgroundPanelLayer()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedBackgroundPanelOrganizer;->mParentLeash:Landroid/view/SurfaceControl;

    return-void
.end method
