.class public Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;
.super Ljava/lang/Object;
.source "FreeformContainerAnimation.java"


# static fields
.field private static final sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

.field private static final sSineInOut70Interpolator:Landroid/view/animation/PathInterpolator;

.field private static final sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

.field private static final sSineInOut90Interpolator:Landroid/view/animation/PathInterpolator;

.field private static final sSineOut60Interpolator:Landroid/view/animation/PathInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 39
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const/4 v2, 0x0

    const v3, 0x3f2b851f    # 0.67f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    .line 41
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e2e147b    # 0.17f

    const v5, 0x3ecccccd    # 0.4f

    invoke-direct {v0, v3, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->sSineOut60Interpolator:Landroid/view/animation/PathInterpolator;

    .line 43
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->sSineInOut70Interpolator:Landroid/view/animation/PathInterpolator;

    .line 45
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    .line 47
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->sSineInOut90Interpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static createFolderCollapseAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 166
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x14d

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 168
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 169
    sget-object p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static createFolderExpandAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 157
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x11b

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 159
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 160
    sget-object p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 161
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method static createHideAnimation()Landroid/view/animation/Animation;
    .locals 3

    .line 115
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x11b

    .line 116
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 117
    sget-object v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method static createHidePointerAnimation(Landroid/view/animation/Animation$AnimationListener;II)Landroid/view/animation/Animation;
    .locals 2

    .line 59
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1, p2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const-wide/16 p1, 0x11b

    .line 60
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 61
    sget-object p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->sSineInOut80Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 62
    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method static createIconFadeOutAnimation(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 3

    .line 107
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 108
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 109
    sget-object v1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->sSineInOut70Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 110
    invoke-virtual {v0, p0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method static createIconMovingToFolderAnimation(Landroid/view/animation/Animation$AnimationListener;IIII)Landroid/view/animation/Animation;
    .locals 2

    .line 138
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    int-to-long p1, p2

    .line 139
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    int-to-long p1, p3

    .line 140
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 141
    sget-object p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->sSineInOut90Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 142
    invoke-virtual {v0, p0}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 144
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 p1, 0x64

    .line 145
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    int-to-long p1, p4

    .line 146
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const/4 p1, 0x1

    .line 147
    invoke-virtual {p0, p1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 148
    sget-object p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->sSineInOut33Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 150
    new-instance p1, Landroid/view/animation/AnimationSet;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 151
    invoke-virtual {p1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 152
    invoke-virtual {p1, p0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object p1
.end method

.method static createMoveTrashToTrashBoxAnimation(Landroid/view/animation/Animation$AnimationListener;FFLandroid/graphics/Rect;)Landroid/view/animation/Animation;
    .locals 8

    .line 176
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 177
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 178
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v6, v0

    .line 179
    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result p3

    int-to-float v7, p3

    .line 181
    new-instance p3, Landroid/view/animation/TranslateAnimation;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1, v0, p2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 182
    new-instance p1, Landroid/view/animation/ScaleAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3f333333    # 0.7f

    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3f333333    # 0.7f

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 183
    new-instance p2, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 185
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 186
    invoke-virtual {v0, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 187
    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 188
    invoke-virtual {v0, p3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 189
    sget-object p1, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->sSineOut60Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p1, 0xfa

    .line 190
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 191
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 192
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    .line 193
    invoke-virtual {v0, p0}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method

.method static createScaleIconViewListAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Z)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    new-array p1, v0, [F

    .line 125
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-array p1, v0, [F

    .line 127
    fill-array-data p1, :array_1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    :goto_0
    const-wide/16 v0, 0xa7

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 130
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
    .end array-data
.end method

.method static createSettleDownPointerEffectAnimator(Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;FFFF)Landroid/animation/Animator;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    const/4 v4, 0x1

    aput p3, v1, v4

    .line 69
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 70
    invoke-virtual {p3, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p0, v0, [F

    aput v3, p0, v2

    aput p4, p0, v4

    .line 72
    invoke-static {p0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p0

    .line 73
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array p1, v0, [F

    aput p5, p1, v2

    aput p6, p1, v4

    .line 75
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 78
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 p3, 0xc8

    .line 84
    invoke-virtual {p0, p3, p4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 85
    invoke-virtual {p0, p2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object p0
.end method

.method static createShowPointerViewAnimation(FFLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 11

    .line 90
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 91
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f000000    # 0.5f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v1

    move v8, p0

    move v10, p1

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 p0, 0x15e

    .line 93
    invoke-virtual {v1, p0, p1}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 94
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    const/high16 v3, 0x40400000    # 3.0f

    invoke-direct {v2, v3}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 97
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const v2, 0x3dcccccd    # 0.1f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 98
    invoke-virtual {v1, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 99
    sget-object p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerAnimation;->sSineInOut70Interpolator:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, p0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 p0, 0x64

    .line 101
    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 102
    invoke-virtual {v0, p2}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method
