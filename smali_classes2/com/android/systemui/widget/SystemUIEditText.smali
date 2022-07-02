.class public Lcom/android/systemui/widget/SystemUIEditText;
.super Landroid/widget/EditText;
.source "SystemUIEditText.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIEditText$ResData;
    }
.end annotation


# instance fields
.field private mAttrCount:I

.field private mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

.field private mDefaultArea:Ljava/lang/String;

.field protected final mDrawPaint:Landroid/graphics/Paint;

.field private mIsCallbackRegistered:Z

.field private mIsLockStarEnabled:Z

.field private mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

.field private mPendingUpdateFlag:J

.field private mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

.field private mUpdateFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006e

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 25
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:J

    .line 27
    new-instance v2, Lcom/android/systemui/widget/SystemUIEditText$ResData;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;-><init>(Lcom/android/systemui/widget/SystemUIEditText$1;)V

    iput-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    const/4 v2, 0x0

    .line 28
    iput v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    .line 29
    iput-boolean v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    .line 30
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:J

    .line 35
    iput-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    .line 36
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 38
    new-instance v0, Lcom/android/systemui/widget/SystemUIEditText$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/widget/SystemUIEditText$1;-><init>(Lcom/android/systemui/widget/SystemUIEditText;)V

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 69
    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 70
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 71
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIEditText;->initAttributeSet(Landroid/content/res/TypedArray;)V

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/widget/SystemUIEditText;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsLockStarEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/widget/SystemUIEditText;)Lcom/android/systemui/widget/SystemUIEditText$ResData;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/widget/SystemUIEditText;)Lcom/android/systemui/pluginlock/PluginLockManager;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/widget/SystemUIEditText;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDefaultArea:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/widget/SystemUIEditText;)Lcom/android/systemui/widget/SystemUIWidgetCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    return-object p0
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 4

    if-eqz p1, :cond_e

    .line 213
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    const/4 v0, 0x0

    move v1, v0

    .line 214
    :goto_0
    iget v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    if-ge v1, v2, :cond_d

    .line 215
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 216
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_wallpaperArea:I

    if-ne v2, v3, :cond_0

    .line 217
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$302(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 218
    :cond_0
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_adaptiveColorMain:I

    if-ne v2, v3, :cond_1

    .line 219
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1802(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 220
    :cond_1
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originColor:I

    if-ne v2, v3, :cond_2

    .line 221
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1902(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 222
    :cond_2
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgColor:I

    if-ne v2, v3, :cond_3

    .line 223
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2002(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 224
    :cond_3
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeColor:I

    if-ne v2, v3, :cond_4

    .line 225
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2102(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 226
    :cond_4
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackColor:I

    if-ne v2, v3, :cond_5

    .line 227
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2202(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 228
    :cond_5
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originShadowColor:I

    if-ne v2, v3, :cond_6

    .line 229
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2302(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 230
    :cond_6
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgShadowColor:I

    if-ne v2, v3, :cond_7

    .line 231
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2402(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 232
    :cond_7
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeShadowColor:I

    if-ne v2, v3, :cond_8

    .line 233
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2502(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 234
    :cond_8
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackShadowColor:I

    if-ne v2, v3, :cond_9

    .line 235
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2602(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 236
    :cond_9
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_movable:I

    if-ne v2, v3, :cond_a

    .line 237
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$802(Lcom/android/systemui/widget/SystemUIEditText$ResData;Z)Z

    goto :goto_1

    .line 238
    :cond_a
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_group:I

    if-ne v2, v3, :cond_b

    .line 239
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$402(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 240
    :cond_b
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themePolicyIgnorable:I

    if-ne v2, v3, :cond_c

    .line 241
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1302(Lcom/android/systemui/widget/SystemUIEditText$ResData;Z)Z

    :cond_c
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 244
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText;->refreshResIds()V

    :cond_e
    return-void
.end method

.method private initEditText()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$900(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 155
    iget-object v3, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 156
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 157
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setTextColor(I)V

    .line 158
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setHintTextColor(I)V

    :cond_0
    if-lez v1, :cond_1

    .line 161
    iget-object v0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 162
    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowRadius()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDx()F

    move-result v2

    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDy()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

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

    .line 133
    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 134
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:J

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private refreshResIds()V
    .locals 4

    .line 249
    iget-object v0, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$902(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    .line 257
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 258
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1602(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    .line 260
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2200(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 261
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2200(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1402(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 264
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1002(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    .line 266
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 267
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2400(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1202(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    .line 269
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 270
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2500(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1702(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    .line 272
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2600(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 273
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$2600(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1502(Lcom/android/systemui/widget/SystemUIEditText$ResData;I)I

    :cond_7
    return-void
.end method

.method private updateEditText()V
    .locals 9

    .line 167
    invoke-virtual {p0}, Landroid/widget/EditText;->semClearAllTextEffect()V

    .line 168
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$900(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v1

    :goto_0
    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v0

    .line 176
    :goto_1
    iget-wide v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, "SystemUIEditText"

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 177
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 178
    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Z

    move-result v2

    .line 177
    invoke-static {v4, v5, v2}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->needsBlackComponent(JZ)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "apply style: theme : white"

    .line 179
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v2

    if-lez v2, :cond_2

    .line 181
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v1

    .line 183
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v2

    if-lez v2, :cond_5

    .line 184
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1500(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v0

    goto :goto_2

    :cond_3
    const-string v2, "apply style: theme : black"

    .line 187
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v2

    if-lez v2, :cond_4

    .line 189
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v1

    .line 191
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v2

    if-lez v2, :cond_5

    .line 192
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIEditText$ResData;)I

    move-result v0

    :cond_5
    :goto_2
    const/4 v2, 0x0

    const/4 v4, 0x1

    const-string v5, "#%08X"

    const/4 v6, 0x0

    if-lez v1, :cond_6

    .line 198
    iget-object v7, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v1, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    .line 199
    iget-object v7, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 200
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 201
    invoke-virtual {p0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 202
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "textColor="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v2

    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-lez v0, :cond_7

    .line 205
    iget-object v1, p0, Landroid/widget/EditText;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0, v6}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 206
    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowRadius()F

    move-result v1

    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDx()F

    move-result v6

    invoke-virtual {p0}, Landroid/widget/EditText;->getShadowDy()F

    move-result v7

    invoke-virtual {p0, v1, v6, v7, v0}, Landroid/widget/EditText;->setShadowLayer(FFFI)V

    .line 207
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shadowColor="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 4

    .line 83
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 84
    iget v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mAttrCount:I

    if-lez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDefaultArea:Ljava/lang/String;

    .line 87
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$800(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 89
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsLockStarEnabled:Z

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$400(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$302(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    .line 95
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$300(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    .line 94
    invoke-static {p0, v0, v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    const/4 v0, 0x1

    .line 97
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 103
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 104
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mIsCallbackRegistered:Z

    .line 106
    const-class v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$800(Lcom/android/systemui/widget/SystemUIEditText$ResData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mResData:Lcom/android/systemui/widget/SystemUIEditText$ResData;

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mDefaultArea:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/systemui/widget/SystemUIEditText$ResData;->access$302(Lcom/android/systemui/widget/SystemUIEditText$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroid/widget/EditText;->onFinishInflate()V

    .line 78
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText;->initEditText()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .line 143
    invoke-super {p0, p1}, Landroid/widget/EditText;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 145
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 146
    const-class p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUIEditText;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 147
    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIEditText;->mPendingUpdateFlag:J

    :cond_0
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUIEditText;->isUpdatableState(J)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 121
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateStyle() flag="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:J

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

    invoke-virtual {p0}, Landroid/widget/EditText;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SystemUIEditText"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIEditText;->mUpdateFlag:J

    .line 124
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText;->refreshResIds()V

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIEditText;->updateEditText()V

    return-void
.end method
