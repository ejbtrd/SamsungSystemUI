.class public Lcom/android/settingslib/SignalIcon$State;
.super Ljava/lang/Object;
.source "SignalIcon.java"


# static fields
.field private static sSDF:Ljava/text/SimpleDateFormat;


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public connected:Z

.field public enabled:Z

.field public iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

.field public inetCondition:I

.field public level:I

.field public rssi:I

.field public time:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 76
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settingslib/SignalIcon$State;->sSDF:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/settingslib/SignalIcon$State;)V
    .locals 2

    .line 93
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    .line 94
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    .line 95
    iget v0, p1, Lcom/android/settingslib/SignalIcon$State;->level:I

    iput v0, p0, Lcom/android/settingslib/SignalIcon$State;->level:I

    .line 96
    iget-object v0, p1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iput-object v0, p0, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    .line 97
    iget v0, p1, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    iput v0, p0, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    .line 98
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    .line 99
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    iput-boolean v0, p0, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    .line 100
    iget v0, p1, Lcom/android/settingslib/SignalIcon$State;->rssi:I

    iput v0, p0, Lcom/android/settingslib/SignalIcon$State;->rssi:I

    .line 101
    iget-wide v0, p1, Lcom/android/settingslib/SignalIcon$State;->time:J

    iput-wide v0, p0, Lcom/android/settingslib/SignalIcon$State;->time:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 132
    :cond_0
    check-cast p1, Lcom/android/settingslib/SignalIcon$State;

    .line 133
    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/settingslib/SignalIcon$State;->level:I

    iget v2, p0, Lcom/android/settingslib/SignalIcon$State;->level:I

    if-ne v0, v2, :cond_1

    iget v0, p1, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    iget v2, p0, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    if-ne v0, v2, :cond_1

    iget-object v0, p1, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    iget-object v2, p0, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    if-ne v0, v2, :cond_1

    iget-boolean v0, p1, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    iget-boolean v2, p0, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    if-ne v0, v2, :cond_1

    iget p1, p1, Lcom/android/settingslib/SignalIcon$State;->rssi:I

    iget p0, p0, Lcom/android/settingslib/SignalIcon$State;->rssi:I

    if-ne p1, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 106
    iget-wide v0, p0, Lcom/android/settingslib/SignalIcon$State;->time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/settingslib/SignalIcon$State;->toString(Ljava/lang/StringBuilder;)V

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 111
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Empty "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected toString(Ljava/lang/StringBuilder;)V
    .locals 3

    const-string v0, "connected="

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settingslib/SignalIcon$State;->connected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "enabled="

    .line 117
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$State;->enabled:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "level="

    .line 118
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/SignalIcon$State;->level:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "inetCondition="

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/SignalIcon$State;->inetCondition:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "iconGroup="

    .line 120
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/SignalIcon$State;->iconGroup:Lcom/android/settingslib/SignalIcon$IconGroup;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "activityIn="

    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$State;->activityIn:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "activityOut="

    .line 122
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settingslib/SignalIcon$State;->activityOut:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "rssi="

    .line 123
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/SignalIcon$State;->rssi:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "lastModified="

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/settingslib/SignalIcon$State;->sSDF:Ljava/text/SimpleDateFormat;

    iget-wide v1, p0, Lcom/android/settingslib/SignalIcon$State;->time:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
