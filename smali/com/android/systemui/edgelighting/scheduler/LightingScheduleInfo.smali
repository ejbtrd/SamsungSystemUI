.class public Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;
.super Ljava/lang/Object;
.source "LightingScheduleInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;,
        Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodySubText;,
        Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodyText;,
        Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;,
        Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTicker;,
        Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "LightingScheduleInfo"


# instance fields
.field private mDuration:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsDirty:Z

.field private mKey:Ljava/lang/String;

.field private mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

.field private mLightingLogicPolicy:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

.field private mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

.field private mPackageName:Ljava/lang/String;

.field private mPriority:I

.field private mReason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xfa0

    .line 39
    iput v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mDuration:I

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIsDirty:Z

    .line 77
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mKey:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 80
    iput p5, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    .line 81
    iput p6, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPriority:I

    .line 82
    iput-object p4, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->makeTextPolicyChain()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .line 28
    sget-boolean v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    return v0
.end method

.method private isTickerSkippedNoti()Z
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getReason()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private makeTextPolicyChain()V
    .locals 4

    .line 87
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    invoke-direct {v0, p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;-><init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 88
    new-instance v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodyText;

    invoke-direct {v1, p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodyText;-><init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 89
    new-instance v2, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodySubText;

    invoke-direct {v2, p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodySubText;-><init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 90
    new-instance v3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTicker;

    invoke-direct {v3, p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTicker;-><init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 91
    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    .line 92
    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->setWith(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->setNext(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->setNext(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;)Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    return-void
.end method


# virtual methods
.method public clearLockReason()V
    .locals 1

    const/4 v0, 0x1

    .line 361
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->setReason(I)V

    const/16 v0, 0xfa0

    .line 362
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->setDuration(I)V

    return-void
.end method

.method public getActionList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation

    .line 287
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "noti_actions"

    .line 289
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 2

    .line 279
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "content_intent"

    .line 281
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 282
    instance-of v1, p0, Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    move-object v0, p0

    check-cast v0, Landroid/app/PendingIntent;

    :cond_0
    return-object v0
.end method

.method public getDuration()I
    .locals 0

    .line 125
    iget p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mDuration:I

    return p0
.end method

.method public getEffectColors()[I
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getEffectColors()[I

    move-result-object p0

    return-object p0
.end method

.method public getGroupKey()Ljava/lang/String;
    .locals 1

    .line 254
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "group_key"

    .line 256
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getLightLogicPolicy()Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;
    .locals 0

    .line 397
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingLogicPolicy:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    if-nez p0, :cond_0

    .line 398
    new-instance p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    invoke-direct {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;-><init>()V

    :cond_0
    return-object p0
.end method

.method public getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .locals 0

    .line 133
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    return-object p0
.end method

.method public getNotiText()[Ljava/lang/String;
    .locals 2

    .line 236
    sget-boolean v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 237
    sget-object v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getChainText()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationID()I
    .locals 1

    .line 319
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "noti_id"

    .line 321
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNotificationKey()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p0, "noti_key"

    .line 246
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 250
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getNotificationTag()Ljava/lang/String;
    .locals 1

    .line 311
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "noti_tag"

    .line 313
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getReason()I
    .locals 0

    .line 141
    iget p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    return p0
.end method

.method public getUserId()I
    .locals 1

    .line 302
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo v0, "user_id"

    .line 304
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVisibility()I
    .locals 2

    .line 270
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    const/16 v0, -0x3e8

    if-eqz p0, :cond_0

    const-string v1, "noti_visiblity"

    .line 272
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method public isDirty()Z
    .locals 0

    .line 153
    iget-boolean p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIsDirty:Z

    return p0
.end method

.method public isSubDataUpdateNoti()Z
    .locals 0

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->isTickerSkippedNoti()Z

    const/4 p0, 0x0

    return p0
.end method

.method public makeLightingLogicPolicy(I)V
    .locals 2

    .line 370
    new-instance v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingLogicPolicy:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

    const/4 p0, 0x1

    if-eqz p1, :cond_2

    if-eq p1, p0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 378
    :cond_0
    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedToKeepWhenLcdOff:Z

    .line 380
    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOff:Z

    .line 381
    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOff:Z

    goto :goto_0

    .line 374
    :cond_1
    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOn:Z

    .line 375
    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOn:Z

    goto :goto_0

    .line 384
    :cond_2
    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedToKeepWhenLcdOff:Z

    .line 385
    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOn:Z

    .line 386
    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOff:Z

    .line 387
    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOn:Z

    .line 388
    iput-boolean p0, v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOff:Z

    :goto_0
    return-void
.end method

.method public mergeInfo(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 183
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    move-result v0

    .line 184
    sget-boolean v1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 185
    sget-object v2, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " getVisibility : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " preVisibility : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " getReason : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getReason()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-ne v0, v2, :cond_5

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getReason()I

    move-result v3

    if-eq v3, v2, :cond_5

    .line 188
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_4

    .line 190
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 191
    iget-object v3, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v3, v2}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    .line 193
    :cond_4
    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->setVisibility(I)V

    .line 197
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getReason()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_6

    goto :goto_0

    .line 200
    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getReason()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->setReason(I)V

    .line 206
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    invoke-virtual {v0, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mergeText(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 208
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->isTextDirty()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIsDirty:Z

    if-nez v0, :cond_8

    .line 210
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getLightingInfo()Lcom/samsung/android/edge/SemEdgeLightingInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/edgelighting/utils/SemEdgeLightingInfoUtils;->isOnGoing(Lcom/samsung/android/edge/SemEdgeLightingInfo;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 211
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_7

    .line 213
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_7
    const-string v2, "flag"

    .line 215
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    or-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    iget-object v2, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v2, v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->setExtra(Landroid/os/Bundle;)V

    .line 219
    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_9

    .line 220
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 222
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object p1

    const-string v2, "content_intent"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_9
    if-eqz v1, :cond_a

    .line 227
    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "mergeInfo"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, " tick="

    .line 228
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getChainText()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " dirty="

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIsDirty:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v0, " vis="

    .line 230
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->getVisibility()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 231
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public setDuration(I)V
    .locals 3

    .line 96
    sget-object v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDuration : duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput p1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mDuration:I

    return-void
.end method

.method public setReason(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 263
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "noti_visiblity"

    .line 265
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public updateTimeToTakeAction(Landroid/content/Context;)V
    .locals 2

    const-string v0, "accessibility"

    .line 350
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    if-eqz p1, :cond_0

    .line 352
    iget v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mDuration:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getRecommendedTimeoutMillis(II)I

    move-result p1

    if-eqz p1, :cond_0

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->setDuration(I)V

    .line 355
    sget-object p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateTimeToTakeAction time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
