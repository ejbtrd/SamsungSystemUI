.class Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;
.super Ljava/lang/Object;
.source "WindowMagnificationAnimationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAnimationCallback:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

.field private final mContext:Landroid/content/Context;

.field private final mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

.field private mEndAnimationCanceled:Z

.field private final mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

.field private final mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

.field private mState:I

.field private final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WindowMagnificationAnimationController"

    const/4 v1, 0x3

    .line 46
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/WindowMagnificationController;)V
    .locals 1

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->newValueAnimator(Landroid/content/res/Resources;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;-><init>(Landroid/content/Context;Lcom/android/systemui/accessibility/WindowMagnificationController;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/accessibility/WindowMagnificationController;Landroid/animation/ValueAnimator;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$1;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    .line 64
    new-instance v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-direct {v0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;-><init>(Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$1;)V

    iput-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndAnimationCanceled:Z

    .line 71
    iput v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    .line 82
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mContext:Landroid/content/Context;

    .line 83
    iput-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    .line 84
    iput-object p3, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 85
    invoke-virtual {p3, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 86
    invoke-virtual {p3, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private static newValueAnimator(Landroid/content/res/Resources;)Landroid/animation/ValueAnimator;
    .locals 3

    .line 282
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const v1, 0x10e0002

    .line 284
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 285
    new-instance p0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 286
    fill-array-data p0, :array_0

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private sendAnimationCallback(Z)V
    .locals 3

    const-string v0, "WindowMagnificationAnimationController"

    .line 249
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mAnimationCallback:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    if-eqz v1, :cond_1

    .line 251
    :try_start_0
    invoke-interface {v1, p1}, Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;->onResult(Z)V

    .line 252
    sget-boolean v1, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAnimationCallback success = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendAnimationCallback failed : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 258
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mAnimationCallback:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    :cond_1
    return-void
.end method

.method private setState(I)V
    .locals 2

    .line 210
    sget-boolean v0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowMagnificationAnimationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    iput p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    return-void
.end method

.method private setupEnableAnimationSpecs(FFF)V
    .locals 5

    .line 133
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {v0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->getScale()F

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->getCenterX()F

    move-result v1

    .line 135
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->getCenterY()F

    move-result v2

    .line 137
    iget v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    if-nez v3, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->set(FFF)V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/android/systemui/R$integer;->magnification_default_scale:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-float p1, p1

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->set(FFF)V

    goto :goto_0

    .line 143
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->set(FFF)V

    .line 144
    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_2

    move p1, v0

    .line 145
    :cond_2
    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_3

    move p2, v1

    .line 146
    :cond_3
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_4

    move p3, v2

    .line 144
    :cond_4
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->set(FFF)V

    .line 148
    :goto_0
    sget-boolean p1, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->DEBUG:Z

    if-eqz p1, :cond_5

    .line 149
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SetupEnableAnimationSpecs : mStartSpec = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", endSpec = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowMagnificationAnimationController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method


# virtual methods
.method deleteWindowMagnification(Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 3

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->sendAnimationCallback(Z)V

    .line 176
    iput-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mAnimationCallback:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    .line 177
    iget p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-virtual {p1, v1, v2, v2}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->set(FFF)V

    .line 184
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {v1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->getScale()F

    move-result v1

    invoke-virtual {p1, v1, v2, v2}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->set(FFF)V

    .line 186
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    .line 187
    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->setState(I)V

    return-void

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 179
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->sendAnimationCallback(Z)V

    :cond_2
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method enableWindowMagnification(FFFLandroid/view/accessibility/IRemoteMagnificationAnimationCallback;)V
    .locals 2

    const/4 v0, 0x0

    .line 108
    invoke-direct {p0, v0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->sendAnimationCallback(Z)V

    .line 109
    iput-object p4, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mAnimationCallback:Landroid/view/accessibility/IRemoteMagnificationAnimationCallback;

    .line 110
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->setupEnableAnimationSpecs(FFF)V

    .line 111
    iget-object p4, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-virtual {p4, v0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->equals(Ljava/lang/Object;)Z

    move-result p4

    const/4 v0, 0x2

    const/4 v1, 0x3

    if-eqz p4, :cond_3

    .line 112
    iget p4, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    if-nez p4, :cond_0

    .line 113
    iget-object p4, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {p4, p1, p2, p3}, Lcom/android/systemui/accessibility/WindowMagnificationController;->enableWindowMagnification(FFF)V

    goto :goto_0

    :cond_0
    if-eq p4, v1, :cond_1

    if-ne p4, v0, :cond_2

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 117
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->sendAnimationCallback(Z)V

    .line 118
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->setState(I)V

    goto :goto_2

    .line 120
    :cond_3
    iget p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mState:I

    if-ne p1, v0, :cond_4

    .line 121
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_5

    .line 124
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 126
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 128
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->setState(I)V

    :goto_2
    return-void
.end method

.method moveWindowMagnifier(FF)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 202
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->moveWindowMagnifier(FF)V

    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 241
    iput-boolean p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndAnimationCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 223
    iget-boolean p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndAnimationCanceled:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 227
    iget-object p2, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {p2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->deleteWindowMagnification()V

    const/4 p2, 0x0

    .line 228
    invoke-direct {p0, p2}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->setState(I)V

    goto :goto_0

    .line 230
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->setState(I)V

    .line 232
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->sendAnimationCallback(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x0

    .line 218
    iput-boolean p1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndAnimationCanceled:Z

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 264
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-static {v0}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->access$100(Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-static {v1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->access$100(Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-static {v2}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->access$100(Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;)F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 266
    iget-object v1, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    .line 267
    invoke-static {v1}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->access$200(Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-static {v2}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->access$200(Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-static {v3}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->access$200(Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;)F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 268
    iget-object v2, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    .line 269
    invoke-static {v2}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->access$300(Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mEndSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-static {v3}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->access$300(Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mStartSpec:Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;

    invoke-static {v4}, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;->access$300(Lcom/android/systemui/accessibility/WindowMagnificationAnimationController$AnimationSpec;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    .line 270
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/accessibility/WindowMagnificationController;->enableWindowMagnification(FFF)V

    return-void
.end method

.method onConfigurationChanged(I)V
    .locals 0

    .line 206
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->onConfigurationChanged(I)V

    return-void
.end method

.method setScale(F)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 162
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/WindowMagnificationController;->setScale(F)V

    return-void
.end method

.method public updateSysUiStateFlag()V
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/systemui/accessibility/WindowMagnificationAnimationController;->mController:Lcom/android/systemui/accessibility/WindowMagnificationController;

    invoke-virtual {p0}, Lcom/android/systemui/accessibility/WindowMagnificationController;->updateSysUIStateFlag()V

    return-void
.end method
