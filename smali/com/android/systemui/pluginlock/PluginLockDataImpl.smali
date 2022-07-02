.class public Lcom/android/systemui/pluginlock/PluginLockDataImpl;
.super Ljava/lang/Object;
.source "PluginLockDataImpl.java"

# interfaces
.implements Lcom/android/systemui/pluginlock/PluginLockData;
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;


# static fields
.field private static final DEFAULT_GRAVITY:I = -0x1

.field private static final DEFAULT_N_CARD_COUNT:I = 0x3

.field private static final DEFAULT_PADDING:I = -0x1

.field private static final DEFAULT_VISIBILITY:I = -0x1

.field public static final TAG:Ljava/lang/String; = "PluginLockDataImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

.field private final mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 31
    invoke-interface {p2, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    return-void
.end method

.method private isLandscape()Z
    .locals 2

    .line 52
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getBottom(I)I
    .locals 3

    .line 298
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 304
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getBottomYLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    if-eq p1, v2, :cond_3

    goto :goto_0

    .line 313
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getBottomY()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getCount(I)I
    .locals 3

    .line 326
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    .line 329
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    const/4 v2, 0x4

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 332
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getNotiCardNumbersLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    if-eq p1, v2, :cond_3

    goto :goto_0

    .line 341
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getNotiCardNumbers()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getGravity(I)I
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    .line 149
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getGravityLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 146
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getGravityLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 143
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getGravityLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_4
    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_0

    .line 165
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getGravity()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 162
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getGravity()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 159
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getGravity()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getPaddingBottom(I)I
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    const/4 v2, 0x5

    if-eqz v0, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 360
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getPaddingBottomLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_2
    if-eq p1, v2, :cond_3

    goto :goto_0

    .line 369
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getPaddingBottom()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getPaddingEnd(I)I
    .locals 4

    .line 218
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 221
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 227
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getPaddingEndLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 224
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingEndLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_3
    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_0

    .line 239
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getPaddingEnd()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 236
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingEnd()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getPaddingStart(I)I
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    .line 190
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getPaddingStartLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 187
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getPaddingStartLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 184
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStartLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_4
    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    goto :goto_0

    .line 205
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getPaddingStart()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 202
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getPaddingStart()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 199
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->getPaddingStart()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getTop(I)I
    .locals 6

    .line 252
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    goto/16 :goto_0

    .line 267
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getTopYLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_0

    .line 264
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getTopYLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 261
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getTopYLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 258
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopYLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_5
    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_6

    goto :goto_0

    .line 285
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getTopY()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 282
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getTopY()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 279
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getTopY()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 276
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopY()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1
.end method

.method public getVisibility(I)I
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 101
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getLockIconData()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->getVisibilityLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ShortcutData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 98
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getVisibilityLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 95
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 91
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getVisibilityLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    .line 88
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibilityLand()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    :goto_0
    move v1, p0

    goto :goto_1

    :cond_1
    packed-switch p1, :pswitch_data_1

    goto :goto_1

    .line 124
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getLockIconData()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 127
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ShortcutData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 121
    :pswitch_8
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 118
    :pswitch_9
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 114
    :pswitch_a
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/MusicData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 111
    :pswitch_b
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->isLandscape()Z

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isLandscapeAvailable()Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isPortraitAvailable()Z

    move-result p0

    :goto_0
    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable(I)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isLandscapeAvailable()Z

    move-result p0

    return p0

    .line 72
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isPortraitAvailable()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public onPluginLockReset()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    return-void
.end method

.method public setDynamicLockData(Ljava/lang/String;)V
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDynamicLockData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockDataImpl"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-static {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->fromJSon(Ljava/lang/String;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    return-void
.end method

.method public updateDynamicLockData(Ljava/lang/String;)V
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDynamicLockData : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "PluginLockDataImpl"

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-static {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->fromJSon(Ljava/lang/String;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockDataImpl;->mData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    return-void
.end method
