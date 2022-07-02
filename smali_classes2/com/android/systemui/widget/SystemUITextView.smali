.class public Lcom/android/systemui/widget/SystemUITextView;
.super Landroid/widget/TextView;
.source "SystemUITextView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUITextView$ResData;
    }
.end annotation


# instance fields
.field private mAttrCount:I

.field private mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

.field private mCompoundVisible:Z

.field private mDefaultArea:Ljava/lang/String;

.field private mDensityDpi:I

.field private mFontScale:F

.field private mIsCallbackRegistered:Z

.field private mIsFixedFontSize:Z

.field private mIsLockStarEnabled:Z

.field private mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

.field private mMaxFontScale:F

.field protected mOriginalFontSizeDp:F

.field private mPendingUpdateFlag:J

.field private mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field protected mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

.field protected mUpdateFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 87
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

    const/4 v2, 0x0

    .line 39
    iput-object v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    const v2, 0x3f99999a    # 1.2f

    .line 40
    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 41
    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    const/4 v2, 0x0

    .line 43
    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    const/4 v3, 0x1

    .line 44
    iput-boolean v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisible:Z

    .line 45
    iput v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    .line 47
    iput-boolean v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    .line 48
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:J

    .line 53
    iput-object p0, p0, Lcom/android/systemui/widget/SystemUITextView;->mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    .line 55
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 57
    new-instance v0, Lcom/android/systemui/widget/SystemUITextView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUITextView$1;-><init>(Lcom/android/systemui/widget/SystemUITextView;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 89
    sget-object v0, Lcom/android/systemui/R$styleable;->KeyguardFontSize:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 90
    sget v1, Lcom/android/systemui/R$styleable;->KeyguardFontSize_isFixedFontSize:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsFixedFontSize:Z

    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 94
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 95
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->initAttributeSet(Landroid/content/res/TypedArray;)V

    .line 96
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/widget/SystemUITextView;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsLockStarEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/widget/SystemUITextView;)Lcom/android/systemui/pluginlock/PluginLockManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/widget/SystemUITextView;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUITextView;->mDefaultArea:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/widget/SystemUITextView;)Lcom/android/systemui/widget/SystemUIWidgetCallback;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUITextView;->mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    return-object p0
.end method

.method public static getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F
    .locals 0

    const p0, 0x3f99999a    # 1.2f

    .line 110
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 410
    new-instance v0, Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-direct {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    if-eqz p1, :cond_16

    .line 412
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    const/4 v0, 0x0

    move v1, v0

    .line 413
    :goto_0
    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    if-ge v1, v2, :cond_15

    .line 414
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 415
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_wallpaperArea:I

    if-ne v2, v3, :cond_0

    .line 416
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$102(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 417
    :cond_0
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_adaptiveColorMain:I

    if-ne v2, v3, :cond_1

    .line 418
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/systemui/widget/SystemUITextView$ResData;->mAdaptiveColorMain:Ljava/lang/String;

    goto/16 :goto_1

    .line 419
    :cond_1
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originColor:I

    if-ne v2, v3, :cond_2

    .line 420
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2302(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 421
    :cond_2
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgColor:I

    if-ne v2, v3, :cond_3

    .line 422
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2102(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 423
    :cond_3
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeColor:I

    if-ne v2, v3, :cond_4

    .line 424
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2402(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 425
    :cond_4
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackColor:I

    if-ne v2, v3, :cond_5

    .line 426
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2502(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 427
    :cond_5
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originShadowColor:I

    if-ne v2, v3, :cond_6

    .line 428
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2602(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 429
    :cond_6
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgShadowColor:I

    if-ne v2, v3, :cond_7

    .line 430
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    goto/16 :goto_1

    .line 431
    :cond_7
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeShadowColor:I

    if-ne v2, v3, :cond_8

    .line 432
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2702(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 433
    :cond_8
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackShadowColor:I

    if-ne v2, v3, :cond_9

    .line 434
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2802(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 435
    :cond_9
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originBackground:I

    if-ne v2, v3, :cond_a

    .line 436
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2902(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 437
    :cond_a
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgBackground:I

    if-ne v2, v3, :cond_b

    .line 438
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3002(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 439
    :cond_b
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBackground:I

    if-ne v2, v3, :cond_c

    .line 440
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3102(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 441
    :cond_c
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackBackground:I

    if-ne v2, v3, :cond_d

    .line 442
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3202(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 443
    :cond_d
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_compoundDrawable:I

    if-ne v2, v3, :cond_e

    .line 444
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3302(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 445
    :cond_e
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_compoundScale:I

    if-ne v2, v3, :cond_f

    .line 446
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3402(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 447
    :cond_f
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_compoundPadding:I

    if-ne v2, v3, :cond_10

    .line 448
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3502(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 449
    :cond_10
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_movable:I

    if-ne v2, v3, :cond_11

    .line 450
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$602(Lcom/android/systemui/widget/SystemUITextView$ResData;Z)Z

    goto :goto_1

    .line 451
    :cond_11
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_group:I

    if-ne v2, v3, :cond_12

    .line 452
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$202(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 453
    :cond_12
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themePolicyIgnorable:I

    if-ne v2, v3, :cond_13

    .line 454
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1002(Lcom/android/systemui/widget/SystemUITextView$ResData;Z)Z

    goto :goto_1

    .line 455
    :cond_13
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_wallpaperColorIgnorable:I

    if-ne v2, v3, :cond_14

    .line 456
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1702(Lcom/android/systemui/widget/SystemUITextView$ResData;Z)Z

    :cond_14
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 459
    :cond_15
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUITextView;->refreshResIds()V

    :cond_16
    return-void
.end method

.method private initTextView()V
    .locals 7

    .line 248
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$700(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v0

    .line 249
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v2, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColorId:I

    .line 250
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$800(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    const/4 v3, 0x0

    if-lez v0, :cond_0

    .line 253
    iget-object v4, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v0, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    if-lez v2, :cond_1

    .line 256
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v5

    iget-object v6, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 256
    invoke-virtual {p0, v0, v4, v5, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :cond_1
    if-lez v1, :cond_2

    .line 260
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 261
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method private isUpdatableState(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 229
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:J

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private refreshResIds()V
    .locals 4

    .line 465
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object v0

    .line 467
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2300(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2300(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$702(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 470
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1802(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 473
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2400(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 474
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2400(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1402(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 476
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2500(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 477
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2500(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1102(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 479
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2600(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 480
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2600(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColorId:I

    .line 482
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v3, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 483
    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iput v3, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColorId:I

    .line 485
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2700(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 486
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2700(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1502(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 488
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2800(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 489
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2800(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1202(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 491
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2900(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    if-eqz v1, :cond_8

    .line 492
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2900(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$802(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 494
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3000(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 495
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3000(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$902(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 497
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 498
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1602(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 500
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3200(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 501
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3200(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1302(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 503
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3300(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 504
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3300(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1902(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 506
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3400(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "dimen"

    if-eqz v1, :cond_d

    .line 507
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3400(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2002(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    .line 509
    :cond_d
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3500(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 510
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {p0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$3500(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2202(Lcom/android/systemui/widget/SystemUITextView$ResData;I)I

    :cond_e
    return-void
.end method

.method private updateCompoundDrawable(Z)V
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 344
    invoke-virtual {p0, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 345
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    goto/16 :goto_1

    .line 347
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2000(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result p1

    if-gtz p1, :cond_1

    goto/16 :goto_1

    .line 352
    :cond_1
    iget-object p1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 353
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2000(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getKeyguardFontScale()F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->getKeyguardFontScale()F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    if-eqz p1, :cond_2

    .line 357
    invoke-virtual {p1, v0, v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 364
    :cond_2
    iget-wide v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    const-string v3, "SystemUITextView"

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 365
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLockWallpaper()Z

    move-result v1

    const/4 v4, 0x1

    const-string v5, "#%08X"

    const-string v6, "filter: "

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 366
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 367
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    if-lez v1, :cond_5

    .line 368
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v7

    invoke-virtual {v1, v7, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 369
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_0

    .line 373
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    if-lez v1, :cond_5

    .line 374
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v7, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v7

    invoke-virtual {v1, v7, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 375
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v0

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 381
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 382
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, v0, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColor:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 384
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v0

    if-lez v0, :cond_5

    .line 385
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 386
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v2

    :goto_0
    if-eqz p1, :cond_6

    .line 393
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 398
    :cond_6
    :try_start_0
    invoke-virtual {p0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 399
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2200(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result p1

    if-lez p1, :cond_7

    .line 401
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$2200(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 400
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "Exception adding mCompoundDrawable!"

    .line 404
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return-void
.end method

.method private updateFontSize(FZ)V
    .locals 2

    .line 126
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 130
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    .line 131
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mOriginalFontSizeDp "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SystemUITextView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;Z)V

    return-void
.end method


# virtual methods
.method public getKeyguardFontScale()F
    .locals 0

    .line 175
    iget p0, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 180
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAttachedToWindow mAttrCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUITextView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mAttrCount:I

    if-lez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mDefaultArea:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$600(Lcom/android/systemui/widget/SystemUITextView$ResData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 186
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsLockStarEnabled:Z

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$200(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$102(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 139
    invoke-virtual {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 199
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 200
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 201
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsCallbackRegistered:Z

    .line 202
    const-class v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$600(Lcom/android/systemui/widget/SystemUITextView$ResData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 206
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUITextView;->mDefaultArea:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$102(Lcom/android/systemui/widget/SystemUITextView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 115
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 117
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSize(FZ)V

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUITextView;->initTextView()V

    return-void
.end method

.method public setMaxFontScale(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f99999a    # 1.2f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    :goto_0
    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .line 239
    invoke-super {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 241
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 242
    const-class p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 243
    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mPendingUpdateFlag:J

    :cond_0
    return-void
.end method

.method public updateFontSizeInKeyguardBoundary()V
    .locals 1

    .line 143
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V
    .locals 1

    const/4 v0, 0x0

    .line 147
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/widget/SystemUITextView;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;Z)V

    return-void
.end method

.method public updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;Z)V
    .locals 4

    .line 151
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mIsFixedFontSize:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    .line 152
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    iget v3, p0, Lcom/android/systemui/widget/SystemUITextView;->mMaxFontScale:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v0

    .line 154
    :goto_0
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    .line 155
    iput p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mDensityDpi:I

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v3

    .line 158
    :goto_1
    iget v2, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    invoke-static {v2, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    iput v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    goto :goto_2

    :cond_2
    move v1, p1

    :goto_2
    if-nez v1, :cond_3

    if-eqz p2, :cond_4

    .line 163
    :cond_3
    iget p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mOriginalFontSizeDp:F

    iget p2, p0, Lcom/android/systemui/widget/SystemUITextView;->mFontScale:F

    mul-float/2addr p1, p2

    iget-object p2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    .line 164
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p2

    .line 163
    invoke-virtual {p0, v3, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 165
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisible:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    :cond_4
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    .line 212
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUITextView;->isUpdatableState(J)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 216
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateStyle() flag="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/TextView;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SystemUITextView"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

    .line 219
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUITextView;->refreshResIds()V

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUITextView;->updateTextView()V

    .line 221
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUITextView;->mCompoundVisible:Z

    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUITextView;->updateCompoundDrawable(Z)V

    return-void
.end method

.method public updateTextView()V
    .locals 12

    .line 266
    invoke-virtual {p0}, Landroid/widget/TextView;->semClearAllTextEffect()V

    .line 267
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance()Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(J)Landroid/app/SemWallpaperColors$Item;

    move-result-object v0

    .line 268
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    .line 269
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/SemWallpaperColors$Item;->getFontColorRgb(I)I

    move-result v2

    if-eqz v1, :cond_0

    .line 270
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$color;->black_font_shadow_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    goto :goto_0

    .line 271
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$color;->white_font_shadow_color:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 272
    :goto_0
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getShadowOpacity()F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v3, v4}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v3

    .line 273
    invoke-virtual {v0}, Landroid/app/SemWallpaperColors$Item;->getShadowSize()F

    move-result v0

    .line 277
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    if-eqz v1, :cond_1

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$900(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v4

    goto :goto_1

    :cond_1
    invoke-static {v4}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$800(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v4

    .line 284
    :goto_1
    iget-wide v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mUpdateFlag:J

    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, -0x1

    const-string v7, "SystemUITextView"

    const/4 v8, 0x0

    if-eqz v5, :cond_8

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 285
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 286
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$100(Lcom/android/systemui/widget/SystemUITextView$ResData;)Ljava/lang/String;

    move-result-object v1

    .line 285
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v9

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    .line 286
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUITextView$ResData;)Z

    move-result v1

    .line 285
    invoke-static {v9, v10, v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(JZ)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "apply style: theme : white"

    .line 287
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    if-lez v1, :cond_2

    .line 289
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v6

    .line 292
    :goto_2
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1200(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v5

    if-lez v5, :cond_3

    .line 293
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1200(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v6

    .line 297
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v5

    if-lez v5, :cond_7

    .line 298
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v4

    goto :goto_4

    :cond_4
    const-string v1, "apply style: theme : black"

    .line 301
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    if-lez v1, :cond_5

    .line 303
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v1

    goto :goto_3

    :cond_5
    move v1, v6

    .line 306
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1500(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v5

    if-lez v5, :cond_6

    .line 307
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1500(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v6

    .line 311
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v5

    if-lez v5, :cond_7

    .line 312
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v4

    :cond_7
    :goto_4
    move v11, v6

    move v6, v1

    move v1, v11

    goto :goto_7

    .line 316
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1700(Lcom/android/systemui/widget/SystemUITextView$ResData;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 317
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    if-eqz v1, :cond_9

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v5

    goto :goto_5

    :cond_9
    invoke-static {v5}, Lcom/android/systemui/widget/SystemUITextView$ResData;->access$700(Lcom/android/systemui/widget/SystemUITextView$ResData;)I

    move-result v5

    :goto_5
    if-eqz v1, :cond_a

    .line 318
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mWhiteBgShadowColorId:I

    goto :goto_6

    :cond_a
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUITextView;->mResData:Lcom/android/systemui/widget/SystemUITextView$ResData;

    iget v1, v1, Lcom/android/systemui/widget/SystemUITextView$ResData;->mOriginShadowColorId:I

    :goto_6
    if-lez v5, :cond_b

    .line 321
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    :cond_b
    if-lez v1, :cond_c

    .line 324
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    :cond_c
    move v1, v6

    :goto_7
    if-lez v6, :cond_d

    .line 329
    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 328
    :cond_d
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDx()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getShadowDy()F

    move-result v5

    if-lez v1, :cond_e

    .line 332
    iget-object v3, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1, v8}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    .line 331
    :cond_e
    invoke-virtual {p0, v0, v2, v5, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    if-lez v4, :cond_f

    const-string/jumbo v0, "set Background Drawable!!"

    .line 336
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 338
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_f
    return-void
.end method
