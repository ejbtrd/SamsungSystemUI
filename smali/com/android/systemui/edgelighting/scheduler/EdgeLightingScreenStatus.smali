.class public Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;
.super Ljava/lang/Object;
.source "EdgeLightingScreenStatus.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EdgeLightingScreenStatus"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScreenOnTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;->mContext:Landroid/content/Context;

    const-string v0, "power"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;->mPowerManager:Landroid/os/PowerManager;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    .line 47
    sget-object v0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;->mScreenOnTime:J

    return-void
.end method

.method public setScreenState(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;->reset()V

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    .line 56
    iput-wide v0, p0, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScreenStatus;->mScreenOnTime:J

    :goto_0
    return-void
.end method
