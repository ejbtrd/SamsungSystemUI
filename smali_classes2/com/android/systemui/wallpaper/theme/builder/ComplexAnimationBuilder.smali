.class public Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
.super Ljava/lang/Object;
.source "ComplexAnimationBuilder.java"


# instance fields
.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

.field private mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    .line 30
    iput-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    return-void
.end method


# virtual methods
.method public addAnimation(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 33
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void
.end method

.method public addScene(Lcom/android/systemui/wallpaper/theme/LockscreenCallback;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    return-void
.end method

.method public addSprite(Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    return-void
.end method

.method public playAnimation()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->screenTurnedOn()V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    if-eqz v0, :cond_1

    .line 53
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/theme/LockscreenCallback;->screenTurnedOn()V

    .line 57
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "ComplexAnimationBuilder"

    const-string v1, "UnsupportedOperationException occurred!"

    .line 59
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const-string p0, "UnsupportedOperationException occurred again!"

    .line 65
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public stopAnimation()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mFestivalSpriteView:Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/theme/OpenThemeSurfaceView;->screenTurnedOff()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mLockscreenCallback:Lcom/android/systemui/wallpaper/theme/LockscreenCallback;

    if-eqz v0, :cond_1

    .line 97
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/theme/LockscreenCallback;->screenTurnedOff()V

    .line 100
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    return-void
.end method
