.class Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodySubText;
.super Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;
.source "LightingScheduleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChainItemBodySubText"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V
    .locals 0

    .line 462
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;-><init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    return-void
.end method


# virtual methods
.method getExtraKey()Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "subText"

    return-object p0
.end method
