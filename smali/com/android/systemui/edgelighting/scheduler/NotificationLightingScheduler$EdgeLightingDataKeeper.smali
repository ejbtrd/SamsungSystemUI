.class Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;
.super Ljava/lang/Object;
.source "NotificationLightingScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EdgeLightingDataKeeper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper$SemEdgeLightingInfoData;
    }
.end annotation


# instance fields
.field private final mNotificationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper$SemEdgeLightingInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private final mWakeLockMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 422
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;->mNotificationMap:Ljava/util/HashMap;

    .line 426
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;->mWakeLockMap:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;)V
    .locals 0

    .line 422
    invoke-direct {p0}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;-><init>()V

    return-void
.end method


# virtual methods
.method public getOldLightingInfo(Ljava/lang/String;)Lcom/samsung/android/edge/SemEdgeLightingInfo;
    .locals 3

    .line 481
    invoke-static {}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getOldLightingInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper$SemEdgeLightingInfoData;

    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$EdgeLightingDataKeeper$SemEdgeLightingInfoData;->mEdgeLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
