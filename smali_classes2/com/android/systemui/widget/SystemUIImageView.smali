.class public Lcom/android/systemui/widget/SystemUIImageView;
.super Landroid/widget/ImageView;
.source "SystemUIImageView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIImageView$ResData;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

.field private mDefaultArea:Ljava/lang/String;

.field private mHasAttr:Z

.field private mIsCallbackRegistered:Z

.field private mIsLockStarEnabled:Z

.field private mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

.field private mPendingUpdateFlag:J

.field private mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private final mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

.field private mUpdateFlag:J

.field private final mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:J

    .line 34
    new-instance v2, Lcom/android/systemui/widget/SystemUIImageView$ResData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;-><init>(Lcom/android/systemui/widget/SystemUIImageView$1;)V

    iput-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    const/4 v2, 0x0

    .line 35
    iput-boolean v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 37
    iput-boolean v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    .line 38
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:J

    .line 43
    iput-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    .line 45
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 47
    new-instance v0, Lcom/android/systemui/widget/SystemUIImageView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIImageView$1;-><init>(Lcom/android/systemui/widget/SystemUIImageView;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 78
    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    .line 79
    iget-object p1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 80
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 81
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIImageView;->initAttributeSet(Landroid/content/res/TypedArray;)V

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/widget/SystemUIImageView;Z)Z
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsLockStarEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/widget/SystemUIImageView;)Lcom/android/systemui/widget/SystemUIImageView$ResData;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/widget/SystemUIImageView;)Lcom/android/systemui/pluginlock/PluginLockManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/widget/SystemUIImageView;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mDefaultArea:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/widget/SystemUIImageView;)Lcom/android/systemui/widget/SystemUIWidgetCallback;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    return-object p0
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 5

    if-eqz p1, :cond_14

    .line 304
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 306
    iput-boolean v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_13

    .line 309
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 310
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_wallpaperArea:I

    if-ne v3, v4, :cond_1

    .line 311
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 312
    :cond_1
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_adaptiveColorMain:I

    if-ne v3, v4, :cond_2

    .line 313
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 314
    :cond_2
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originColor:I

    if-ne v3, v4, :cond_3

    .line 315
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2402(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 316
    :cond_3
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgColor:I

    if-ne v3, v4, :cond_4

    .line 317
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2202(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 318
    :cond_4
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeColor:I

    if-ne v3, v4, :cond_5

    .line 319
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2502(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 320
    :cond_5
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackColor:I

    if-ne v3, v4, :cond_6

    .line 321
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2602(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 322
    :cond_6
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originImage:I

    if-ne v3, v4, :cond_7

    .line 323
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2702(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 324
    :cond_7
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeImage:I

    if-ne v3, v4, :cond_8

    .line 325
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2802(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 326
    :cond_8
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackImage:I

    if-ne v3, v4, :cond_9

    .line 327
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2902(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 328
    :cond_9
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgImage:I

    if-ne v3, v4, :cond_a

    .line 329
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2102(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 330
    :cond_a
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgTintColor:I

    if-ne v3, v4, :cond_b

    .line 331
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3002(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 332
    :cond_b
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originBackground:I

    if-ne v3, v4, :cond_c

    .line 333
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3102(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 334
    :cond_c
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgBackground:I

    if-ne v3, v4, :cond_d

    .line 335
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3202(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 336
    :cond_d
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBackground:I

    if-ne v3, v4, :cond_e

    .line 337
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 338
    :cond_e
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackBackground:I

    if-ne v3, v4, :cond_f

    .line 339
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3402(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 340
    :cond_f
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_movable:I

    if-ne v3, v4, :cond_10

    .line 341
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$802(Lcom/android/systemui/widget/SystemUIImageView$ResData;Z)Z

    goto :goto_1

    .line 342
    :cond_10
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_group:I

    if-ne v3, v4, :cond_11

    .line 343
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$402(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 344
    :cond_11
    sget v4, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themePolicyIgnorable:I

    if-ne v3, v4, :cond_12

    .line 345
    iget-object v4, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-static {v4, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Z)Z

    :cond_12
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 348
    :cond_13
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->refreshResIds()V

    :cond_14
    return-void
.end method

.method private initImage()V
    .locals 4

    const/4 v0, 0x0

    .line 172
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 173
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    const-string v2, "SystemUIImageView"

    if-lez v0, :cond_0

    const-string/jumbo v3, "set Image Drawable!!"

    .line 177
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v3, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 179
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-lez v1, :cond_1

    const-string/jumbo v0, "set Background Drawable!!"

    .line 182
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 184
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private isUpdatableState(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:J

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private refreshResIds()V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "color"

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3502(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 357
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1602(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1902(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 363
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1502(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 365
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "drawable"

    if-eqz v0, :cond_4

    .line 366
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$902(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 368
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 369
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 371
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 372
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1802(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 374
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 375
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1402(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 377
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 378
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3602(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 380
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 381
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1002(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 383
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 384
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1202(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 386
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 387
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2002(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 389
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 390
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$3400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1702(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    :cond_c
    return-void
.end method

.method private updateImage()V
    .locals 9

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 190
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v1

    .line 191
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    .line 192
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    if-eqz v1, :cond_1

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    :goto_1
    const/4 v4, 0x0

    .line 197
    iget-wide v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:J

    const-wide/16 v7, 0x1

    and-long/2addr v5, v7

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    const-string v7, "SystemUIImageView"

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 198
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 199
    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Z

    move-result v5

    .line 198
    invoke-static {v2, v3, v5}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(JZ)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "apply style: theme : white"

    .line 200
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    if-gtz v2, :cond_4

    .line 205
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    if-lez v2, :cond_2

    .line 206
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 207
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 206
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 209
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-lez v1, :cond_3

    .line 210
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 211
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 210
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 214
    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    move v2, v1

    move v4, v6

    .line 217
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    if-lez v3, :cond_f

    .line 218
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-lez v1, :cond_f

    .line 219
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v5

    invoke-virtual {v1, v5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 220
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v1, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_6

    :cond_5
    const-string v2, "apply style: theme"

    .line 223
    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    if-gtz v2, :cond_9

    .line 228
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    if-lez v2, :cond_6

    .line 229
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 230
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 229
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    .line 232
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    if-lez v2, :cond_7

    .line 233
    iget-object v2, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 234
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    .line 233
    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_7
    :goto_3
    if-eqz v1, :cond_8

    .line 237
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    :goto_4
    move v2, v1

    move v4, v6

    .line 240
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    if-lez v3, :cond_f

    .line 241
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-lez v1, :cond_f

    .line 242
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v5

    invoke-virtual {v1, v5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 243
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v1, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_6

    :cond_a
    if-eqz v1, :cond_e

    .line 247
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    .line 248
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    :cond_b
    const-string v1, "apply style: white-bg"

    .line 249
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-gtz v1, :cond_d

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "white-bg res invalid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-lez v1, :cond_c

    .line 256
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 256
    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 259
    :cond_c
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$900(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    move v2, v1

    move v4, v6

    goto :goto_5

    :cond_d
    move v2, v1

    .line 262
    :goto_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v3

    if-lez v3, :cond_f

    .line 263
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v1

    if-lez v1, :cond_f

    .line 264
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v5}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageView$ResData;)I

    move-result v5

    invoke-virtual {v1, v5, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 265
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v1, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_6

    :cond_e
    const-string v1, "apply style: default"

    .line 268
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object v5, v0

    :goto_6
    if-lez v2, :cond_14

    const-string/jumbo v1, "set Image Drawable!!"

    .line 274
    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object v1, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_10

    .line 277
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drawable is null res = "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-eqz v4, :cond_11

    if-eqz v1, :cond_11

    .line 281
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 283
    :cond_11
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/ContrastColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/ContrastColorUtil;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/util/ContrastColorUtil;->isGrayscaleIcon(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 284
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_12
    if-eqz v1, :cond_13

    .line 287
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 289
    :cond_13
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_14
    if-lez v3, :cond_16

    const-string/jumbo v0, "set Background Drawable!!"

    .line 293
    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 296
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 298
    :cond_15
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_16
    return-void
.end method


# virtual methods
.method public invalidateImage()V
    .locals 0

    .line 395
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 93
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 94
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mDefaultArea:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 98
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsLockStarEnabled:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$400(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$300(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 109
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 110
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mIsCallbackRegistered:Z

    .line 112
    const-class v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mDefaultArea:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$302(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 87
    invoke-super {p0}, Landroid/widget/ImageView;->onFinishInflate()V

    .line 88
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->initImage()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 123
    sget-object p0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_CLICK:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 132
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public setOriginImage(Ljava/lang/String;)V
    .locals 3

    .line 487
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2702(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 491
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 492
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 493
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 494
    const-class p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 496
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2700(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$902(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 497
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setOriginImage() this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIImageView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .line 163
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 165
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 166
    const-class p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUIImageView;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 167
    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIImageView;->mPendingUpdateFlag:J

    :cond_0
    return-void
.end method

.method public setWhiteBgImage(Ljava/lang/String;)V
    .locals 3

    .line 508
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 509
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {v0, p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2102(Lcom/android/systemui/widget/SystemUIImageView$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 512
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 513
    iget-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 514
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mHasAttr:Z

    .line 515
    const-class p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 517
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mResData:Lcom/android/systemui/widget/SystemUIImageView$ResData;

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mWidgetRes:Lcom/android/systemui/widget/SystemUIWidgetRes;

    invoke-static {p1}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIImageView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/widget/SystemUIImageView$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIImageView$ResData;I)I

    .line 518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setWhiteBgImage() this = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUIImageView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    .line 137
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUIImageView;->isUpdatableState(J)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 141
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateStyle() flag="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:J

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

    invoke-virtual {p0}, Landroid/widget/ImageView;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SystemUIImageView"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIImageView;->mUpdateFlag:J

    .line 144
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->refreshResIds()V

    .line 145
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageView;->updateImage()V

    return-void
.end method
