.class public Lcom/android/systemui/widget/SystemUIImageButton;
.super Landroid/widget/ImageButton;
.source "SystemUIImageButton.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIImageButton$ResData;
    }
.end annotation


# instance fields
.field private mAttrCount:I

.field private mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

.field private mDefaultArea:Ljava/lang/String;

.field private mIsCallbackRegistered:Z

.field private mIsLockStarEnabled:Z

.field private mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

.field private mPendingUpdateFlag:J

.field private mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

.field private mUpdateFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 70
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, 0x0

    .line 29
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:J

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    const/4 p1, 0x0

    .line 31
    iput p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    .line 33
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:J

    .line 38
    iput-object p0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    .line 39
    const-class p1, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 41
    new-instance p1, Lcom/android/systemui/widget/SystemUIImageButton$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/widget/SystemUIImageButton$1;-><init>(Lcom/android/systemui/widget/SystemUIImageButton;)V

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 71
    iget-object p1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 72
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIImageButton;->initAttributeSet(Landroid/content/res/TypedArray;)V

    .line 74
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/widget/SystemUIImageButton;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsLockStarEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/widget/SystemUIImageButton;)Lcom/android/systemui/widget/SystemUIImageButton$ResData;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/widget/SystemUIImageButton;)Lcom/android/systemui/pluginlock/PluginLockManager;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/widget/SystemUIImageButton;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mDefaultArea:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/widget/SystemUIImageButton;)Lcom/android/systemui/widget/SystemUIWidgetCallback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    return-object p0
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 4

    .line 245
    new-instance v0, Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;-><init>(Lcom/android/systemui/widget/SystemUIImageButton$1;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    if-eqz p1, :cond_13

    .line 247
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    const/4 v0, 0x0

    move v1, v0

    .line 248
    :goto_0
    iget v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    if-ge v1, v2, :cond_12

    .line 249
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 250
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_wallpaperArea:I

    if-ne v2, v3, :cond_0

    .line 251
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$202(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 252
    :cond_0
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_adaptiveColorMain:I

    if-ne v2, v3, :cond_1

    .line 253
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2302(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 254
    :cond_1
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originColor:I

    if-ne v2, v3, :cond_2

    .line 255
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2402(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 256
    :cond_2
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgColor:I

    if-ne v2, v3, :cond_3

    .line 257
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2002(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 258
    :cond_3
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeColor:I

    if-ne v2, v3, :cond_4

    .line 259
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2502(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 260
    :cond_4
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackColor:I

    if-ne v2, v3, :cond_5

    .line 261
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2602(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 262
    :cond_5
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originImage:I

    if-ne v2, v3, :cond_6

    .line 263
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2702(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 264
    :cond_6
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeImage:I

    if-ne v2, v3, :cond_7

    .line 265
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2802(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 266
    :cond_7
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackImage:I

    if-ne v2, v3, :cond_8

    .line 267
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2902(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 268
    :cond_8
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgImage:I

    if-ne v2, v3, :cond_9

    .line 269
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1902(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 270
    :cond_9
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgTintColor:I

    if-ne v2, v3, :cond_a

    .line 271
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3002(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 272
    :cond_a
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originBackground:I

    if-ne v2, v3, :cond_b

    .line 273
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3102(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 274
    :cond_b
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgBackground:I

    if-ne v2, v3, :cond_c

    .line 275
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3202(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 276
    :cond_c
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBackground:I

    if-ne v2, v3, :cond_d

    .line 277
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3302(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 278
    :cond_d
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackBackground:I

    if-ne v2, v3, :cond_e

    .line 279
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3402(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 280
    :cond_e
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_movable:I

    if-ne v2, v3, :cond_f

    .line 281
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$702(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Z)Z

    goto :goto_1

    .line 282
    :cond_f
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_group:I

    if-ne v2, v3, :cond_10

    .line 283
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$302(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 284
    :cond_10
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themePolicyIgnorable:I

    if-ne v2, v3, :cond_11

    .line 285
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1202(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Z)Z

    :cond_11
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 288
    :cond_12
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->refreshResIds()V

    :cond_13
    return-void
.end method

.method private initButtonImage()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    .line 154
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$900(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    if-lez v0, :cond_0

    .line 157
    iget-object v2, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    if-lez v1, :cond_1

    .line 163
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

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

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:J

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private refreshResIds()V
    .locals 5

    .line 293
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    if-eqz v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3502(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 298
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 299
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2102(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1702(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 304
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2600(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 305
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2600(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1402(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 307
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2700(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "drawable"

    if-eqz v1, :cond_4

    .line 308
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2700(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$802(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 310
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 311
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1002(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 313
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2800(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 314
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2800(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1602(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 316
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2900(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 317
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2900(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1302(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 319
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 320
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3602(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 322
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 323
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$902(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 325
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 326
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 328
    :cond_a
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 329
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1802(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    .line 331
    :cond_b
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3400(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 332
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$3400(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1502(Lcom/android/systemui/widget/SystemUIImageButton$ResData;I)I

    :cond_c
    return-void
.end method

.method private updateButtonImage()V
    .locals 9

    .line 168
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    .line 170
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$900(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v2

    .line 174
    :goto_1
    iget-wide v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:J

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    const-string v5, "SystemUIImageButton"

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 175
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 176
    invoke-static {v3}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Z

    move-result v3

    .line 175
    invoke-static {v1, v2, v3}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(JZ)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "apply style: theme : white"

    .line 177
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    if-lez v0, :cond_2

    .line 182
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 183
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 182
    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    :cond_3
    move v1, v0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v2

    goto/16 :goto_4

    :cond_4
    const-string v1, "apply style: theme"

    .line 191
    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    if-gtz v1, :cond_7

    .line 195
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    if-lez v1, :cond_5

    .line 196
    iget-object v1, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    .line 197
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 196
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_5
    if-eqz v0, :cond_6

    .line 199
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    :goto_2
    move v1, v0

    .line 203
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v2

    goto/16 :goto_4

    :cond_8
    if-eqz v0, :cond_b

    .line 206
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    .line 207
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    :cond_9
    const-string v0, "apply style: white-bg"

    .line 208
    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    if-gtz v1, :cond_b

    .line 212
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    if-lez v0, :cond_a

    .line 213
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 214
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "filter: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const-string v0, "#%08X"

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    move-object v1, v4

    .line 217
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$800(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)I

    move-result v0

    move-object v8, v1

    move v1, v0

    move-object v0, v8

    goto :goto_5

    :cond_b
    :goto_4
    move-object v0, v4

    :goto_5
    if-lez v1, :cond_d

    .line 228
    iget-object v3, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_d

    if-eqz v0, :cond_c

    const-string v3, "filter is not null!!"

    .line 231
    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 234
    :cond_c
    invoke-virtual {p0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_d
    if-lez v2, :cond_e

    const-string/jumbo v0, "resBgId is not null!!"

    .line 239
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Landroid/widget/ImageButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 85
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 86
    iget v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mAttrCount:I

    if-lez v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mDefaultArea:Ljava/lang/String;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 91
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsLockStarEnabled:Z

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$300(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$202(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$200(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 103
    invoke-super {p0}, Landroid/widget/ImageButton;->onDetachedFromWindow()V

    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mIsCallbackRegistered:Z

    .line 106
    const-class v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$700(Lcom/android/systemui/widget/SystemUIImageButton$ResData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mResData:Lcom/android/systemui/widget/SystemUIImageButton$ResData;

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mDefaultArea:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/systemui/widget/SystemUIImageButton$ResData;->access$202(Lcom/android/systemui/widget/SystemUIImageButton$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 79
    invoke-super {p0}, Landroid/widget/ImageButton;->onFinishInflate()V

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->initButtonImage()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .line 144
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 146
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 147
    const-class p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUIImageButton;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 148
    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mPendingUpdateFlag:J

    :cond_0
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUIImageButton;->isUpdatableState(J)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 122
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateStyle() flag="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:J

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

    invoke-virtual {p0}, Landroid/widget/ImageButton;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SystemUIImageButton"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIImageButton;->mUpdateFlag:J

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->refreshResIds()V

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIImageButton;->updateButtonImage()V

    return-void
.end method
