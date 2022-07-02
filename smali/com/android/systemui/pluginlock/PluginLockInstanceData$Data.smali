.class public Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;
.super Ljava/lang/Object;
.source "PluginLockInstanceData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pluginlock/PluginLockInstanceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Data"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;
    }
.end annotation


# instance fields
.field private mNumber:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number"
    .end annotation
.end field

.field private mPackageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "package_name"
    .end annotation
.end field

.field private mRecoverData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recover_data"
    .end annotation
.end field

.field private mTimeStamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_stamp"
    .end annotation
.end field

.field private final mTimeStampList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "time_stamp_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mWhich:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "which"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 96
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStamp:Ljava/lang/Long;

    const/4 v1, 0x0

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mWhich:Ljava/lang/Integer;

    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStampList:Ljava/util/List;

    .line 106
    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p0, 0x1

    .line 107
    invoke-interface {v2, p0, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 209
    instance-of v0, p1, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    if-eqz v0, :cond_0

    .line 210
    check-cast p1, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;

    .line 211
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNumber()Ljava/lang/Integer;
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mNumber:Ljava/lang/Integer;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getRecoverData()Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mRecoverData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    invoke-direct {v0}, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mRecoverData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    .line 190
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mRecoverData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    return-object p0
.end method

.method public getTimeStamp()Ljava/lang/Long;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStamp:Ljava/lang/Long;

    return-object p0
.end method

.method public getTimeStamps(I)Ljava/lang/Long;
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStampList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 173
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    return-object p0

    :cond_0
    const-wide/16 p0, 0x0

    .line 175
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method public getTimeStamps()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStampList:Ljava/util/List;

    return-object p0
.end method

.method public getWhich()I
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mWhich:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public isEnabled(I)Z
    .locals 5

    .line 194
    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    if-nez p1, :cond_1

    .line 196
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mWhich:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/2addr p0, v2

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    if-ne p1, v2, :cond_2

    .line 198
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mWhich:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 203
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStamp:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    const-wide/16 v3, 0x0

    cmp-long p0, p0, v3

    if-lez p0, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public setNumber(Ljava/lang/Integer;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mNumber:Ljava/lang/Integer;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setRecoverData(Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mRecoverData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    return-void
.end method

.method public setScreen(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    .line 142
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mWhich:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mWhich:Ljava/lang/Integer;

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mWhich:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, -0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mWhich:Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_2

    .line 148
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mWhich:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    or-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mWhich:Ljava/lang/Integer;

    goto :goto_0

    .line 150
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mWhich:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, -0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mWhich:Ljava/lang/Integer;

    :cond_3
    :goto_0
    return-void
.end method

.method public setTimeStamp(ILjava/lang/Long;)V
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStampList:Ljava/util/List;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setTimeStamp(Ljava/lang/Long;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStamp:Ljava/lang/Long;

    return-void
.end method

.method public setTimeStampList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 128
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 129
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v0, 0x1

    .line 130
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStampList:Ljava/util/List;

    invoke-static {p0, p1}, Ljava/util/Collections;->copy(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setWhich(I)V
    .locals 0

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mWhich:Ljava/lang/Integer;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 219
    sget-boolean v0, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_MULTIPLE_ACTIVATION:Z

    const-string v1, ", "

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStampList:Ljava/util/List;

    const/4 v3, 0x0

    .line 219
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStampList:Ljava/util/List;

    const/4 v3, 0x1

    .line 220
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mTimeStamp:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mNumber:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mWhich:Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data;->mRecoverData:Lcom/android/systemui/pluginlock/PluginLockInstanceData$Data$RecoverData;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
