.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinatorKt;
.super Ljava/lang/Object;
.source "SmartspaceDedupingCoordinator.kt"


# static fields
.field private static final ALERT_WINDOW:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 211
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinatorKt;->ALERT_WINDOW:J

    return-void
.end method

.method public static final synthetic access$getALERT_WINDOW$p()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/SmartspaceDedupingCoordinatorKt;->ALERT_WINDOW:J

    return-wide v0
.end method
