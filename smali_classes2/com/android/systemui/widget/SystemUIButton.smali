.class public Lcom/android/systemui/widget/SystemUIButton;
.super Landroid/widget/Button;
.source "SystemUIButton.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIButton$ResData;
    }
.end annotation


# instance fields
.field private mAttrCount:I

.field private mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

.field private mDefaultArea:Ljava/lang/String;

.field protected mDensityDpi:I

.field private mFontScale:F

.field private mIsCallbackRegistered:Z

.field private mIsLockStarEnabled:Z

.field private mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

.field protected mOriginalFontSizeDp:F

.field private mPendingUpdateFlag:J

.field private mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private final mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

.field private mUpdateFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 27
    new-instance v0, Lcom/android/systemui/widget/SystemUIButton$ResData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;-><init>(Lcom/android/systemui/widget/SystemUIButton$1;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    const/4 v1, 0x0

    .line 30
    iput v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    iput v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    const-wide/16 v1, 0x0

    .line 32
    iput-wide v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:J

    .line 33
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    .line 34
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    .line 35
    iput-wide v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:J

    .line 41
    iput-object p0, p0, Lcom/android/systemui/widget/SystemUIButton;->mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    .line 42
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 44
    new-instance v0, Lcom/android/systemui/widget/SystemUIButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIButton$1;-><init>(Lcom/android/systemui/widget/SystemUIButton;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 73
    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 74
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 75
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIButton;->initAttributeSet(Landroid/content/res/TypedArray;)V

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/widget/SystemUIButton;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsLockStarEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/widget/SystemUIButton;)Lcom/android/systemui/widget/SystemUIButton$ResData;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/widget/SystemUIButton;)Lcom/android/systemui/pluginlock/PluginLockManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/widget/SystemUIButton;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton;->mDefaultArea:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/widget/SystemUIButton;)Lcom/android/systemui/widget/SystemUIWidgetCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton;->mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    return-object p0
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 4

    if-eqz p1, :cond_12

    .line 310
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    const/4 v0, 0x0

    move v1, v0

    .line 311
    :goto_0
    iget v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    if-ge v1, v2, :cond_11

    .line 312
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 313
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_wallpaperArea:I

    if-ne v2, v3, :cond_0

    .line 314
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$302(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 315
    :cond_0
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_adaptiveColorMain:I

    if-ne v2, v3, :cond_1

    .line 316
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$3402(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 317
    :cond_1
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originColor:I

    if-ne v2, v3, :cond_2

    .line 318
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2202(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 319
    :cond_2
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgColor:I

    if-ne v2, v3, :cond_3

    .line 320
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2302(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 321
    :cond_3
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeColor:I

    if-ne v2, v3, :cond_4

    .line 322
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2402(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 323
    :cond_4
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackColor:I

    if-ne v2, v3, :cond_5

    .line 324
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2502(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 325
    :cond_5
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originShadowColor:I

    if-ne v2, v3, :cond_6

    .line 326
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2602(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 327
    :cond_6
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgShadowColor:I

    if-ne v2, v3, :cond_7

    .line 328
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2702(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 329
    :cond_7
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeShadowColor:I

    if-ne v2, v3, :cond_8

    .line 330
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2802(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 331
    :cond_8
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackShadowColor:I

    if-ne v2, v3, :cond_9

    .line 332
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2902(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 333
    :cond_9
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originBackground:I

    if-ne v2, v3, :cond_a

    .line 334
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$3002(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 335
    :cond_a
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgBackground:I

    if-ne v2, v3, :cond_b

    .line 336
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$3102(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 337
    :cond_b
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBackground:I

    if-ne v2, v3, :cond_c

    .line 338
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$3202(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 339
    :cond_c
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackBackground:I

    if-ne v2, v3, :cond_d

    .line 340
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$3302(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 341
    :cond_d
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_movable:I

    if-ne v2, v3, :cond_e

    .line 342
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$802(Lcom/android/systemui/widget/SystemUIButton$ResData;Z)Z

    goto :goto_1

    .line 343
    :cond_e
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_group:I

    if-ne v2, v3, :cond_f

    .line 344
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$402(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 345
    :cond_f
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themePolicyIgnorable:I

    if-ne v2, v3, :cond_10

    .line 346
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1502(Lcom/android/systemui/widget/SystemUIButton$ResData;Z)Z

    :cond_10
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 349
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->refreshResIds()V

    :cond_12
    return-void
.end method

.method private initButtonColor()V
    .locals 11

    .line 187
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v0

    .line 188
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v1

    .line 189
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v2

    .line 190
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v3

    .line 192
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v4}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$900(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v4

    .line 193
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v5

    .line 194
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    const/4 v7, 0x0

    if-lez v4, :cond_0

    .line 197
    iget-object v8, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v4, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    if-lez v5, :cond_1

    .line 200
    invoke-virtual {p0}, Landroid/widget/Button;->getShadowRadius()F

    move-result v4

    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDx()F

    move-result v8

    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDy()F

    move-result v9

    iget-object v10, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 201
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v5, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    .line 200
    invoke-virtual {p0, v4, v8, v9, v5}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    :cond_1
    if-lez v6, :cond_2

    .line 204
    iget-object v4, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 206
    :cond_2
    invoke-virtual {p0, v2, v0, v3, v1}, Landroid/widget/Button;->setPadding(IIII)V

    return-void
.end method

.method private isUpdatableState(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 168
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:J

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private updateButtonColor()V
    .locals 11

    .line 210
    invoke-virtual {p0}, Landroid/widget/Button;->semClearAllTextEffect()V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$300(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 212
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingTop()I

    move-result v1

    .line 213
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v2

    .line 214
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingLeft()I

    move-result v3

    .line 215
    invoke-virtual {p0}, Landroid/widget/Button;->getPaddingRight()I

    move-result v4

    .line 217
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    if-eqz v0, :cond_0

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v5

    goto :goto_0

    :cond_0
    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$900(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v5

    .line 218
    :goto_0
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    if-eqz v0, :cond_1

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    goto :goto_1

    :cond_1
    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    :goto_1
    if-eqz v0, :cond_2

    .line 219
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v0

    .line 225
    :goto_2
    iget-wide v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:J

    const-wide/16 v9, 0x1

    and-long/2addr v7, v9

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 226
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$300(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    .line 227
    invoke-static {v9}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIButton$ResData;)Z

    move-result v9

    .line 226
    invoke-static {v7, v8, v9}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(JZ)Z

    move-result v7

    const-string v8, "SystemUIButton"

    if-eqz v7, :cond_5

    const-string v7, "apply style: theme : white"

    .line 228
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    if-lez v7, :cond_3

    .line 230
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v5

    .line 232
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    if-lez v7, :cond_4

    .line 233
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    .line 235
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    if-lez v7, :cond_8

    .line 236
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v0

    goto :goto_3

    :cond_5
    const-string v7, "apply style: theme : black"

    .line 239
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    if-lez v7, :cond_6

    .line 241
    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v5

    .line 243
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    if-lez v7, :cond_7

    .line 244
    iget-object v6, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v6}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v6

    .line 246
    :cond_7
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v7}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v7

    if-lez v7, :cond_8

    .line 247
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIButton$ResData;)I

    move-result v0

    :cond_8
    :goto_3
    const/4 v7, 0x0

    if-lez v5, :cond_9

    .line 254
    iget-object v8, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/widget/Button;->setTextColor(I)V

    :cond_9
    if-lez v6, :cond_a

    .line 257
    invoke-virtual {p0}, Landroid/widget/Button;->getShadowRadius()F

    move-result v5

    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDx()F

    move-result v8

    invoke-virtual {p0}, Landroid/widget/Button;->getShadowDy()F

    move-result v9

    iget-object v10, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 258
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    .line 257
    invoke-virtual {p0, v5, v8, v9, v6}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    :cond_a
    if-lez v0, :cond_b

    .line 262
    iget-object v5, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_b
    invoke-virtual {p0, v3, v1, v4, v2}, Landroid/widget/Button;->setPadding(IIII)V

    return-void
.end method

.method private updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V
    .locals 4

    .line 103
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v0

    .line 105
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v1, :cond_0

    .line 106
    iput p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mDensityDpi:I

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 109
    :goto_0
    iget v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    invoke-static {v1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_1
    if-eqz v2, :cond_2

    .line 114
    iget p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    iget v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mFontScale:F

    mul-float/2addr p1, v0

    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 115
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, v0

    .line 114
    invoke-virtual {p0, v3, p1}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 121
    invoke-super {p0}, Landroid/widget/Button;->onAttachedToWindow()V

    .line 122
    iget v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mAttrCount:I

    if-lez v0, :cond_1

    .line 124
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$300(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mDefaultArea:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$800(Lcom/android/systemui/widget/SystemUIButton$ResData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 127
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsLockStarEnabled:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$400(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$302(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$300(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 133
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Landroid/widget/Button;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIButton;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 139
    invoke-super {p0}, Landroid/widget/Button;->onDetachedFromWindow()V

    .line 140
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mIsCallbackRegistered:Z

    .line 142
    const-class v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$800(Lcom/android/systemui/widget/SystemUIButton$ResData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton;->mDefaultArea:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$302(Lcom/android/systemui/widget/SystemUIButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 81
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 82
    invoke-virtual {p0}, Landroid/widget/Button;->getTextSize()F

    move-result v0

    .line 83
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 86
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    mul-float v3, v1, v2

    div-float/2addr v0, v3

    .line 87
    iput v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mOriginalFontSizeDp:F

    const/4 v3, 0x0

    .line 88
    iget-object v4, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    .line 89
    invoke-static {v4, v2}, Lcom/android/systemui/widget/SystemUITextView;->getFontScaleInKeyguardBoundary(Landroid/content/Context;F)F

    move-result v2

    mul-float/2addr v0, v2

    mul-float/2addr v0, v1

    .line 88
    invoke-virtual {p0, v3, v0}, Landroid/widget/Button;->setTextSize(IF)V

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/widget/SystemUIButton;->updateFontSizeInKeyguardBoundary(Landroid/content/res/Configuration;)V

    .line 93
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIButton;->initButtonColor()V

    return-void
.end method

.method refreshResIds()V
    .locals 4

    .line 268
    iget-object v0, p0, Landroid/widget/Button;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2200(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2200(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$902(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2300(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2300(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1202(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 277
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1902(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 279
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 280
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1602(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 282
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2600(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 283
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2600(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1002(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 285
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2700(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 286
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2700(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1302(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 288
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2800(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 289
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2800(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2002(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 291
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2900(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 292
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2900(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1702(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 294
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$3000(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    if-eqz v1, :cond_8

    .line 295
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$3000(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 297
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$3100(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 298
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$3100(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1402(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 300
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$3200(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 301
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$3200(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$2102(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    .line 303
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$3300(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 304
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIButton;->mResData:Lcom/android/systemui/widget/SystemUIButton$ResData;

    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$3300(Lcom/android/systemui/widget/SystemUIButton$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUIButton$ResData;->access$1802(Lcom/android/systemui/widget/SystemUIButton$ResData;I)I

    :cond_b
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .line 178
    invoke-super {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 180
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 181
    const-class p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUIButton;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 182
    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIButton;->mPendingUpdateFlag:J

    :cond_0
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUIButton;->isUpdatableState(J)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 156
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateStyle() flag="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:J

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

    invoke-virtual {p0}, Landroid/widget/Button;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SystemUIButton"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIButton;->mUpdateFlag:J

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/widget/SystemUIButton;->refreshResIds()V

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIButton;->updateButtonColor()V

    return-void
.end method
