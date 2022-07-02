.class public Lcom/android/systemui/widget/SystemUIView;
.super Landroid/view/View;
.source "SystemUIView.java"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/widget/SystemUIView$ResData;
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

.field private final mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

.field private mUpdateFlag:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/widget/SystemUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/widget/SystemUIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:J

    .line 25
    new-instance p1, Lcom/android/systemui/widget/SystemUIView$ResData;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;-><init>(Lcom/android/systemui/widget/SystemUIView$1;)V

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    const/4 p1, 0x0

    .line 26
    iput p1, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    .line 27
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIView;->mIsCallbackRegistered:Z

    .line 28
    iput-wide v0, p0, Lcom/android/systemui/widget/SystemUIView;->mPendingUpdateFlag:J

    .line 33
    iput-object p0, p0, Lcom/android/systemui/widget/SystemUIView;->mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    .line 34
    const-class p1, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockManager;

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 36
    new-instance p1, Lcom/android/systemui/widget/SystemUIView$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/widget/SystemUIView$1;-><init>(Lcom/android/systemui/widget/SystemUIView;)V

    iput-object p1, p0, Lcom/android/systemui/widget/SystemUIView;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 66
    iget-object p1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/R$styleable;->SysuiWidgetRes:[I

    .line 67
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/widget/SystemUIView;->initAttributeSet(Landroid/content/res/TypedArray;)V

    .line 69
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/widget/SystemUIView;Z)Z
    .locals 0

    .line 21
    iput-boolean p1, p0, Lcom/android/systemui/widget/SystemUIView;->mIsLockStarEnabled:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/widget/SystemUIView;)Lcom/android/systemui/widget/SystemUIView$ResData;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/widget/SystemUIView;)Lcom/android/systemui/pluginlock/PluginLockManager;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/widget/SystemUIView;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView;->mDefaultArea:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/widget/SystemUIView;)Lcom/android/systemui/widget/SystemUIWidgetCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView;->mCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    return-object p0
.end method

.method private initAttributeSet(Landroid/content/res/TypedArray;)V
    .locals 4

    if-eqz p1, :cond_e

    .line 193
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    const/4 v0, 0x0

    move v1, v0

    .line 194
    :goto_0
    iget v2, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    if-ge v1, v2, :cond_d

    .line 195
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 196
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_wallpaperArea:I

    if-ne v2, v3, :cond_0

    .line 197
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$302(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 198
    :cond_0
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_adaptiveColorMain:I

    if-ne v2, v3, :cond_1

    .line 199
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1502(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 200
    :cond_1
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originColor:I

    if-ne v2, v3, :cond_2

    .line 201
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1602(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 202
    :cond_2
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgColor:I

    if-ne v2, v3, :cond_3

    .line 203
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1402(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 204
    :cond_3
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeColor:I

    if-ne v2, v3, :cond_4

    .line 205
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1702(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_1

    .line 206
    :cond_4
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackColor:I

    if-ne v2, v3, :cond_5

    .line 207
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1802(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 208
    :cond_5
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_originImage:I

    if-ne v2, v3, :cond_6

    .line 209
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1902(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 210
    :cond_6
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeImage:I

    if-ne v2, v3, :cond_7

    .line 211
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$2002(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 212
    :cond_7
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themeBlackImage:I

    if-ne v2, v3, :cond_8

    .line 213
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$2102(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 214
    :cond_8
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_whitebgImage:I

    if-ne v2, v3, :cond_9

    .line 215
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1302(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 216
    :cond_9
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_movable:I

    if-ne v2, v3, :cond_a

    .line 217
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$802(Lcom/android/systemui/widget/SystemUIView$ResData;Z)Z

    goto :goto_1

    .line 218
    :cond_a
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_group:I

    if-ne v2, v3, :cond_b

    .line 219
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$402(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 220
    :cond_b
    sget v3, Lcom/android/systemui/R$styleable;->SysuiWidgetRes_themePolicyIgnorable:I

    if-ne v2, v3, :cond_c

    .line 221
    iget-object v3, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-static {v3, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$2202(Lcom/android/systemui/widget/SystemUIView$ResData;Z)Z

    :cond_c
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 224
    :cond_d
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIView;->refreshResIds()V

    :cond_e
    return-void
.end method

.method private initImage()V
    .locals 4

    .line 146
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$900(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v1

    const-string v2, "SystemUIView"

    if-lez v0, :cond_0

    const-string/jumbo v3, "setBackgroundResource!!"

    .line 150
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    if-lez v1, :cond_1

    const-string/jumbo v0, "setBackgroundColor!!"

    .line 154
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 156
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

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

    .line 127
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 128
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIView;->mPendingUpdateFlag:J

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private refreshResIds()V
    .locals 4

    .line 229
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getInstance(Landroid/content/Context;)Lcom/android/systemui/widget/SystemUIWidgetRes;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    if-eqz v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1600(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1002(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1202(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 238
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1700(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$2302(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 241
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1800(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$2402(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    .line 243
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "drawable"

    if-eqz v1, :cond_4

    .line 244
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1900(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$902(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    .line 246
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 247
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1102(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    .line 249
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 250
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$2000(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$2502(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    .line 252
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 253
    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {p0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$2100(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/widget/SystemUIWidgetRes;->getResIdByName(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$2602(Lcom/android/systemui/widget/SystemUIView$ResData;I)I

    :cond_7
    return-void
.end method

.method private updateImage()V
    .locals 7

    .line 161
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$300(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 162
    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$900(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v1

    .line 163
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v2

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1000(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v2

    .line 165
    :goto_1
    iget-wide v3, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:J

    const-wide/16 v5, 0x1

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const-string v4, "SystemUIView"

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLook()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_5

    .line 168
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    .line 169
    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :cond_3
    const-string v0, "apply style: white-bg"

    .line 170
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1300(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 172
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1100(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v1

    .line 174
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1400(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 175
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$1200(Lcom/android/systemui/widget/SystemUIView$ResData;)I

    move-result v2

    :cond_5
    :goto_2
    if-lez v1, :cond_6

    const-string/jumbo v0, "setBackgroundResource!!"

    .line 181
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_6
    if-lez v2, :cond_7

    const-string/jumbo v0, "setBackgroundColor!!"

    .line 185
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 187
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_7
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 80
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 81
    iget v0, p0, Lcom/android/systemui/widget/SystemUIView;->mAttrCount:I

    if-lez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$300(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mDefaultArea:Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIView$ResData;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->registerSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 86
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIView;->mIsLockStarEnabled:Z

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$400(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$302(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$300(Lcom/android/systemui/widget/SystemUIView$ResData;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIView;->mIsCallbackRegistered:Z

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 98
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 99
    iget-boolean v0, p0, Lcom/android/systemui/widget/SystemUIView;->mIsCallbackRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 100
    iput-boolean v0, p0, Lcom/android/systemui/widget/SystemUIView;->mIsCallbackRegistered:Z

    .line 101
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    invoke-static {v0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$800(Lcom/android/systemui/widget/SystemUIView$ResData;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    iget-object v1, p0, Lcom/android/systemui/widget/SystemUIView;->mLockStarCallback:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->removeSystemUIViewCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    .line 106
    iget-object v0, p0, Lcom/android/systemui/widget/SystemUIView;->mResData:Lcom/android/systemui/widget/SystemUIView$ResData;

    iget-object p0, p0, Lcom/android/systemui/widget/SystemUIView;->mDefaultArea:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/systemui/widget/SystemUIView$ResData;->access$302(Lcom/android/systemui/widget/SystemUIView$ResData;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 74
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIView;->initImage()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 4

    .line 137
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 139
    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIView;->mPendingUpdateFlag:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    .line 140
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/widget/SystemUIView;->updateStyle(JLandroid/app/SemWallpaperColors;)V

    .line 141
    iput-wide v2, p0, Lcom/android/systemui/widget/SystemUIView;->mPendingUpdateFlag:J

    :cond_0
    return-void
.end method

.method public updateStyle(JLandroid/app/SemWallpaperColors;)V
    .locals 2

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUIView;->isUpdatableState(J)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateStyle() flag="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:J

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

    invoke-virtual {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SystemUIView"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-wide p1, p0, Lcom/android/systemui/widget/SystemUIView;->mUpdateFlag:J

    .line 118
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIView;->refreshResIds()V

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/widget/SystemUIView;->updateImage()V

    return-void
.end method
