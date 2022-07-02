.class public Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;
.super Ljava/lang/Object;
.source "SoundModeTileVolumeIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconMotion"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIconRunnable:Ljava/lang/Runnable;

.field private final mResources:Landroid/content/res/Resources;


# direct methods
.method public static synthetic $r8$lambda$4gcw0UiBBOmhBoHwVpMvyJ_uzD8(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->lambda$startMinAnimation$1(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$66hlGJRNXRU9Y8bmN6PHFIlt_U4(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->lambda$startSplashAnimation$2(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qxh4z_7632gZ1jtm8Wszu-YIxPI(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->lambda$startMidAnimation$0(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 426
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    .line 428
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;)Ljava/lang/Runnable;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mIconRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;)Landroid/os/Handler;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;
    .locals 1

    const/4 p0, 0x0

    cmpl-float v0, p3, p0

    if-eqz v0, :cond_0

    neg-float p0, p2

    add-float/2addr p0, p3

    :cond_0
    const/4 p3, 0x2

    new-array p3, p3, [F

    const/4 v0, 0x0

    aput p2, p3, v0

    const/4 p2, 0x1

    aput p0, p3, p2

    const-string/jumbo p0, "translationX"

    .line 698
    invoke-static {p1, p0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    int-to-long p1, p4

    .line 699
    invoke-virtual {p0, p1, p2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 700
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method

.method private synthetic lambda$startMidAnimation$0(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 10

    move v2, p1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 513
    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-eq v2, v0, :cond_1

    if-nez v2, :cond_2

    :cond_1
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 515
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private synthetic lambda$startMinAnimation$1(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 10

    move v2, p1

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    const/4 v0, 0x3

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    const/4 v9, 0x0

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 564
    invoke-virtual/range {v1 .. v9}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v9, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 562
    invoke-virtual/range {v0 .. v9}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic lambda$startSplashAnimation$2(Landroid/view/View;Landroidx/dynamicanimation/animation/DynamicAnimation;FF)V
    .locals 0

    const/4 p1, 0x0

    cmpl-float p2, p3, p1

    if-nez p2, :cond_0

    .line 621
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 622
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    :cond_0
    return-void
.end method


# virtual methods
.method public startMaxAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/16 v4, 0x8

    move-object/from16 v5, p6

    .line 432
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v5, 0x0

    .line 433
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v6, p7

    .line 434
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 435
    iget-object v6, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$dimen;->volume_media_icon_note_max_x:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 436
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v8, Lcom/android/systemui/R$dimen;->volume_media_icon_wave_s_max_x:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 437
    iget-object v8, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v9, Lcom/android/systemui/R$dimen;->volume_media_icon_wave_l_max_x:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/4 v9, 0x2

    move/from16 v10, p1

    if-ne v10, v9, :cond_0

    move-object/from16 v10, p5

    .line 441
    invoke-virtual {v10, v4}, Landroid/view/View;->setVisibility(I)V

    .line 442
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 443
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v4, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_s_max_x:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 445
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_l_max_x:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    :cond_0
    new-array v0, v9, [F

    .line 447
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v0, v5

    const/4 v4, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    aput v10, v0, v4

    const-string v11, "alpha"

    invoke-static {v2, v11, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v12, v9, [F

    .line 448
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v13

    aput v13, v12, v5

    aput v10, v12, v4

    invoke-static {v3, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 449
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v12, v4, [Landroid/animation/Animator;

    aput-object v0, v12, v5

    .line 450
    invoke-virtual {v11, v12}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v4, [Landroid/animation/Animator;

    aput-object v10, v0, v5

    .line 451
    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v12, 0x0

    if-eqz p8, :cond_1

    move-wide v14, v12

    goto :goto_0

    :cond_1
    const-wide/16 v14, 0x96

    .line 452
    :goto_0
    invoke-virtual {v11, v14, v15}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 453
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v9, [F

    .line 455
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v10

    aput v10, v0, v5

    int-to-float v6, v6

    aput v6, v0, v4

    const-string/jumbo v6, "x"

    invoke-static {v1, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v9, [F

    .line 456
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v10

    aput v10, v1, v5

    int-to-float v7, v7

    aput v7, v1, v4

    invoke-static {v2, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-array v2, v9, [F

    .line 457
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v2, v5

    int-to-float v7, v8

    aput v7, v2, v4

    invoke-static {v3, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 459
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v6, v4, [Landroid/animation/Animator;

    aput-object v0, v6, v5

    .line 460
    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v4, [Landroid/animation/Animator;

    aput-object v1, v0, v5

    .line 461
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v4, [Landroid/animation/Animator;

    aput-object v2, v0, v5

    .line 462
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p8, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v12, 0xc8

    .line 463
    :goto_1
    invoke-virtual {v3, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 464
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v6, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 466
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v4, [Landroid/animation/Animator;

    aput-object v11, v1, v5

    .line 467
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v4, [Landroid/animation/Animator;

    aput-object v3, v1, v5

    .line 468
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 469
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startMidAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 22

    move-object/from16 v10, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const/16 v0, 0x8

    move-object/from16 v8, p7

    .line 473
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x0

    .line 474
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v9, p8

    .line 475
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 476
    iget-object v2, v10, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->volume_media_icon_note_mid_x:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 477
    iget-object v3, v10, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$dimen;->volume_media_icon_wave_s_mid_x:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 478
    iget-object v7, v10, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v11, Lcom/android/systemui/R$dimen;->volume_media_icon_wave_l_mid_x:I

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v11, 0x2

    move/from16 v12, p1

    move-object/from16 v13, p6

    if-ne v12, v11, :cond_0

    .line 482
    invoke-virtual {v13, v0}, Landroid/view/View;->setVisibility(I)V

    .line 483
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 484
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 485
    iget-object v0, v10, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_s_mid_x:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 486
    iget-object v0, v10, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_l_mid_x:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    :cond_0
    new-array v0, v11, [F

    .line 488
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v14

    aput v14, v0, v1

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    aput v15, v0, v14

    const-string v15, "alpha"

    invoke-static {v5, v15, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v14, v11, [F

    .line 489
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v17

    aput v17, v14, v1

    const v17, 0x3dcccccd    # 0.1f

    const/4 v11, 0x1

    aput v17, v14, v11

    invoke-static {v6, v15, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 490
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v8, v11, [Landroid/animation/Animator;

    aput-object v0, v8, v1

    .line 491
    invoke-virtual {v15, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v11, [Landroid/animation/Animator;

    aput-object v14, v0, v1

    .line 492
    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v18, 0x0

    if-eqz p9, :cond_1

    move v8, v2

    move-wide/from16 v1, v18

    goto :goto_0

    :cond_1
    const-wide/16 v20, 0x64

    move v8, v2

    move-wide/from16 v1, v20

    .line 493
    :goto_0
    invoke-virtual {v15, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 494
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v15, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x2

    new-array v2, v1, [F

    .line 496
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v11

    const/4 v0, 0x0

    aput v11, v2, v0

    int-to-float v8, v8

    const/4 v11, 0x1

    aput v8, v2, v11

    const-string/jumbo v8, "x"

    invoke-static {v4, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v14, v1, [F

    .line 497
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v16

    aput v16, v14, v0

    int-to-float v3, v3

    aput v3, v14, v11

    invoke-static {v5, v8, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v1, v1, [F

    .line 498
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getX()F

    move-result v14

    aput v14, v1, v0

    int-to-float v7, v7

    aput v7, v1, v11

    invoke-static {v6, v8, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 500
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v8, v11, [Landroid/animation/Animator;

    aput-object v2, v8, v0

    .line 501
    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v11, [Landroid/animation/Animator;

    aput-object v3, v2, v0

    .line 502
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v11, [Landroid/animation/Animator;

    aput-object v1, v2, v0

    .line 503
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p9, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v18, 0xc8

    :goto_1
    move-wide/from16 v1, v18

    .line 504
    invoke-virtual {v7, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 505
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v3, 0x3e800000    # 0.25f

    const/4 v8, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v8, v11}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v7, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 507
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/animation/Animator;

    const/4 v0, 0x0

    aput-object v7, v2, v0

    .line 508
    invoke-virtual {v11, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v15, v1, v0

    .line 509
    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 510
    iget-object v0, v10, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mHandler:Landroid/os/Handler;

    iget-object v1, v10, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 511
    new-instance v14, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$$ExternalSyntheticLambda2;

    move-object v0, v14

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v14, v10, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mIconRunnable:Ljava/lang/Runnable;

    .line 517
    new-instance v0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$1;

    invoke-direct {v0, v10}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;)V

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 523
    invoke-virtual {v11}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startMinAnimation(IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 21

    move-object/from16 v10, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    const/16 v0, 0x8

    move-object/from16 v8, p7

    .line 527
    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v11, 0x0

    .line 528
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v9, p8

    .line 529
    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 532
    iget-object v1, v10, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->volume_media_icon_note_min_x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v7, 0x2

    move-object/from16 v12, p6

    if-ne v3, v7, :cond_0

    .line 534
    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 535
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    .line 536
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x3e99999a    # 0.3f

    .line 538
    iget-object v1, v10, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v13, Lcom/android/systemui/R$dimen;->volume_sound_icon_spk_min_x:I

    invoke-virtual {v1, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-array v13, v7, [F

    .line 540
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v14

    aput v14, v13, v11

    const/4 v14, 0x1

    aput v0, v13, v14

    const-string v0, "alpha"

    invoke-static {v5, v0, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-array v15, v7, [F

    .line 541
    invoke-virtual/range {p5 .. p5}, Landroid/view/View;->getAlpha()F

    move-result v16

    aput v16, v15, v11

    aput v2, v15, v14

    invoke-static {v6, v0, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 542
    new-instance v15, Landroid/animation/AnimatorSet;

    invoke-direct {v15}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v14, [Landroid/animation/Animator;

    aput-object v13, v2, v11

    .line 543
    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v2, v14, [Landroid/animation/Animator;

    aput-object v0, v2, v11

    .line 544
    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v17, 0x0

    if-eqz p9, :cond_1

    move-wide/from16 v11, v17

    goto :goto_1

    :cond_1
    const-wide/16 v19, 0x64

    move-wide/from16 v11, v19

    .line 545
    :goto_1
    invoke-virtual {v15, v11, v12}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 546
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v15, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v7, [F

    .line 548
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v2

    const/4 v11, 0x0

    aput v2, v0, v11

    int-to-float v1, v1

    aput v1, v0, v14

    const-string/jumbo v1, "x"

    invoke-static {v4, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 549
    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v14, [Landroid/animation/Animator;

    aput-object v0, v2, v11

    .line 550
    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-ne v3, v7, :cond_2

    .line 552
    iget-object v0, v10, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_s_min_x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-array v2, v7, [F

    .line 553
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v2, v11

    int-to-float v0, v0

    aput v0, v2, v14

    invoke-static {v5, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v1, v14, [Landroid/animation/Animator;

    aput-object v0, v1, v11

    .line 554
    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :cond_2
    if-eqz p9, :cond_3

    goto :goto_2

    :cond_3
    const-wide/16 v17, 0xc8

    :goto_2
    move-wide/from16 v0, v17

    .line 556
    invoke-virtual {v12, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 557
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e6147ae    # 0.22f

    const/high16 v2, 0x3e800000    # 0.25f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct {v0, v1, v2, v11, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 559
    iget-object v0, v10, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mHandler:Landroid/os/Handler;

    iget-object v1, v10, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 560
    new-instance v11, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$$ExternalSyntheticLambda1;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;IILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    iput-object v11, v10, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mIconRunnable:Ljava/lang/Runnable;

    .line 567
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v1, v14, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object v15, v1, v2

    .line 568
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v1, v14, [Landroid/animation/Animator;

    aput-object v12, v1, v2

    .line 569
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 570
    new-instance v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$2;

    invoke-direct {v1, v10}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$2;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 576
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startModeMuteChangeAnimation(Landroid/view/View;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    .line 705
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x4

    .line 706
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 707
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    aput v2, v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    const-string/jumbo v2, "x"

    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x64

    .line 708
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 709
    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 711
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v2, v3, [Landroid/animation/Animator;

    aput-object p1, v2, v0

    .line 712
    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 713
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 714
    new-instance p1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$3;

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$3;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;Landroid/view/View;)V

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public startMuteAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 7

    const/4 v0, 0x0

    .line 580
    invoke-virtual {p6, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p6, 0x4

    .line 581
    invoke-virtual {p2, p6}, Landroid/view/View;->setVisibility(I)V

    .line 582
    invoke-virtual {p7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 583
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->volume_media_icon_note_min_x:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 585
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->volume_sound_icon_spk_min_x:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/16 p1, 0x8

    .line 586
    invoke-virtual {p5, p1}, Landroid/view/View;->setVisibility(I)V

    .line 587
    invoke-virtual {p3, p6}, Landroid/view/View;->setVisibility(I)V

    .line 588
    invoke-virtual {p4, p6}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-array p1, v2, [F

    .line 592
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p5

    aput p5, p1, v0

    const/4 p5, 0x1

    const/4 p6, 0x0

    aput p6, p1, p5

    const-string v3, "alpha"

    invoke-static {p3, v3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-array p3, v2, [F

    .line 593
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, p3, v0

    aput p6, p3, p5

    invoke-static {p4, v3, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 594
    new-instance p4, Landroid/animation/AnimatorSet;

    invoke-direct {p4}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, p5, [Landroid/animation/Animator;

    aput-object p1, v3, v0

    .line 595
    invoke-virtual {p4, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p1, p5, [Landroid/animation/Animator;

    aput-object p3, p1, v0

    .line 596
    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v3, 0x0

    if-eqz p8, :cond_1

    move-wide v5, v3

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x64

    .line 597
    :goto_0
    invoke-virtual {p4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 598
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p4, p1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p1, v2, [F

    .line 600
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result p3

    aput p3, p1, v0

    int-to-float p3, v1

    aput p3, p1, p5

    const-string/jumbo p3, "x"

    invoke-static {p2, p3, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    if-eqz p8, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0xc8

    .line 601
    :goto_1
    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 602
    new-instance p2, Landroid/view/animation/PathInterpolator;

    const p3, 0x3e6147ae    # 0.22f

    const/high16 v1, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, v1, p6, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 604
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, p3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 605
    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p3, p5, [Landroid/animation/Animator;

    aput-object p4, p3, v0

    .line 606
    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, p5, [Landroid/animation/Animator;

    aput-object p1, p3, v0

    .line 607
    invoke-virtual {p2, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 608
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->start()V

    if-nez p8, :cond_3

    .line 610
    invoke-virtual {p0, p7}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startSplashAnimation(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public startSoundAnimation(ILandroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v3, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 726
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->volume_sound_icon_spk_min_x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 727
    iget-object v2, v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_s_min_x:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 728
    iget-object v4, v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_l_mid_x:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v3, v10, :cond_0

    .line 732
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->volume_sound_icon_spk_mid_x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 733
    iget-object v2, v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_s_mid_x:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 734
    iget-object v4, v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v7, 0x3dcccccd    # 0.1f

    const/16 v12, 0x96

    goto :goto_2

    :cond_0
    if-nez p5, :cond_2

    const/4 v7, 0x3

    if-ne v3, v7, :cond_1

    goto :goto_0

    :cond_1
    const v9, 0x3e99999a    # 0.3f

    const/16 v12, 0x64

    const/4 v7, 0x0

    goto :goto_2

    .line 739
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->volume_sound_icon_spk_max_x:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 740
    iget-object v2, v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v4, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_s_max_x:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 741
    iget-object v4, v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v7, Lcom/android/systemui/R$dimen;->volume_sound_icon_wave_l_max_x:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-eqz p5, :cond_3

    move v12, v11

    goto :goto_1

    :cond_3
    const/16 v7, 0xfa

    move v12, v7

    :goto_1
    move v7, v9

    :goto_2
    new-array v13, v10, [F

    .line 747
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getAlpha()F

    move-result v14

    aput v14, v13, v11

    const/4 v14, 0x1

    aput v9, v13, v14

    const-string v9, "alpha"

    invoke-static {v5, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    new-array v15, v10, [F

    .line 748
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getAlpha()F

    move-result v16

    aput v16, v15, v11

    aput v7, v15, v14

    invoke-static {v6, v9, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 749
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v15, v14, [Landroid/animation/Animator;

    aput-object v13, v15, v11

    .line 750
    invoke-virtual {v9, v15}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v13, v14, [Landroid/animation/Animator;

    aput-object v7, v13, v11

    .line 751
    invoke-virtual {v9, v13}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    int-to-long v12, v12

    .line 752
    invoke-virtual {v9, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 753
    new-instance v7, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v7}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v9, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v7, v10, [F

    .line 755
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v15

    aput v15, v7, v11

    int-to-float v0, v0

    aput v0, v7, v14

    const-string/jumbo v0, "x"

    move-object/from16 v15, p2

    invoke-static {v15, v0, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    new-array v8, v10, [F

    .line 756
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getX()F

    move-result v17

    aput v17, v8, v11

    int-to-float v2, v2

    aput v2, v8, v14

    invoke-static {v5, v0, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 758
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v10, v14, [Landroid/animation/Animator;

    aput-object v7, v10, v11

    .line 759
    invoke-virtual {v8, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v7, v14, [Landroid/animation/Animator;

    aput-object v2, v7, v11

    .line 760
    invoke-virtual {v8, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-nez p5, :cond_4

    if-eq v3, v14, :cond_5

    :cond_4
    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 762
    invoke-virtual/range {p4 .. p4}, Landroid/view/View;->getX()F

    move-result v7

    aput v7, v2, v11

    int-to-float v4, v4

    aput v4, v2, v14

    invoke-static {v6, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v2, v14, [Landroid/animation/Animator;

    aput-object v0, v2, v11

    .line 763
    invoke-virtual {v8, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 765
    :cond_5
    invoke-virtual {v8, v12, v13}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 766
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v2, 0x3e6147ae    # 0.22f

    const/high16 v4, 0x3e800000    # 0.25f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    invoke-direct {v0, v2, v4, v10, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v8, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 768
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v14, [Landroid/animation/Animator;

    aput-object v8, v0, v11

    .line 769
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v14, [Landroid/animation/Animator;

    aput-object v9, v0, v11

    .line 770
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 771
    new-instance v8, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$4;

    move-object v0, v8

    move-object/from16 v1, p0

    move/from16 v2, p5

    move/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$4;-><init>(Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;ZILandroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 783
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public startSoundVibrationAnimation(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Z)V
    .locals 6

    const/4 v0, 0x0

    .line 632
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x4

    .line 633
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 634
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 635
    invoke-virtual {p6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 636
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 637
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 638
    iget-object p5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mHandler:Landroid/os/Handler;

    iget-object p6, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {p5, p6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 640
    iget-object p5, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget p6, Lcom/android/systemui/R$dimen;->volume_sound_icon_spk_min_x:I

    invoke-virtual {p5, p6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    const/4 p6, 0x2

    new-array v1, p6, [F

    .line 643
    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result v2

    aput v2, v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    const-string v4, "alpha"

    invoke-static {p3, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-array v1, p6, [F

    .line 644
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result v5

    aput v5, v1, v0

    aput v3, v1, v2

    invoke-static {p4, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 645
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v4, v2, [Landroid/animation/Animator;

    aput-object p3, v4, v0

    .line 646
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p3, v2, [Landroid/animation/Animator;

    aput-object p4, p3, v0

    .line 647
    invoke-virtual {v1, p3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p3, 0x0

    if-eqz p7, :cond_0

    move-wide v4, p3

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x32

    .line 648
    :goto_0
    invoke-virtual {v1, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 649
    new-instance v4, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v4}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array p6, p6, [F

    .line 651
    invoke-virtual {p2}, Landroid/view/View;->getX()F

    move-result v4

    aput v4, p6, v0

    int-to-float p5, p5

    aput p5, p6, v2

    const-string/jumbo p5, "x"

    invoke-static {p2, p5, p6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    if-eqz p7, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 p3, 0xc8

    .line 652
    :goto_1
    invoke-virtual {p2, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 653
    new-instance p3, Landroid/view/animation/PathInterpolator;

    const p4, 0x3e6147ae    # 0.22f

    const/high16 p5, 0x3e800000    # 0.25f

    const/high16 p6, 0x3f800000    # 1.0f

    invoke-direct {p3, p4, p5, v3, p6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {p2, p3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 655
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p4, v2, [Landroid/animation/Animator;

    aput-object v1, p4, v0

    .line 656
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array p4, v2, [Landroid/animation/Animator;

    aput-object p2, p4, v0

    .line 657
    invoke-virtual {p3, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 658
    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    if-nez p7, :cond_2

    .line 661
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->startVibrationAnimation(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public startSplashAnimation(Landroid/view/View;)V
    .locals 2

    const/4 p0, 0x0

    .line 615
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 616
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, p1, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 617
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 618
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 619
    new-instance v1, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 625
    new-instance p1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {p1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v1, 0x43960000    # 300.0f

    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    const v1, 0x3f147ae1    # 0.58f

    .line 626
    invoke-virtual {p1, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object p1

    .line 625
    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 627
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    const/high16 p0, 0x3f800000    # 1.0f

    .line 628
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    return-void
.end method

.method public startVibrationAnimation(Landroid/view/View;)V
    .locals 7

    .line 666
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->volume_vibrate_init:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 667
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->volume_vibrate_offset:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    neg-float v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x3c

    .line 668
    invoke-direct {p0, p1, v3, v2, v4}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v4

    sub-float v5, v0, v1

    const/16 v6, 0x50

    .line 672
    invoke-direct {p0, p1, v2, v5, v6}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v2

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v1, v6

    sub-float/2addr v0, v1

    neg-float v0, v0

    const/16 v1, 0x64

    .line 676
    invoke-direct {p0, p1, v5, v0, v1}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object v1

    const/16 v5, 0x78

    .line 680
    invoke-direct {p0, p1, v0, v3, v5}, Lcom/android/systemui/qs/tiles/SoundModeTileVolumeIcon$IconMotion;->getVibrationAnimator(Landroid/view/View;FFI)Landroid/animation/Animator;

    move-result-object p0

    .line 685
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 686
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 687
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 688
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 689
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 692
    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 693
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
