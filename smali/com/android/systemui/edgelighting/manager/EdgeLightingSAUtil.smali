.class public Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;
.super Ljava/lang/Object;
.source "EdgeLightingSAUtil.java"


# static fields
.field private static final DEBUG:Z

.field private static mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;


# instance fields
.field private final MINIMUM_STATUS_UPDATE_PERIOD_MS:J

.field private mLastUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0xf731400

    .line 44
    iput-wide v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->MINIMUM_STATUS_UPDATE_PERIOD_MS:J

    const-wide/16 v0, -0x1

    .line 46
    iput-wide v0, p0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->mLastUpdateTime:J

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;
    .locals 1

    .line 271
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;

    if-nez v0, :cond_0

    .line 272
    new-instance v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;

    invoke-direct {v0}, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;-><init>()V

    sput-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;

    .line 274
    :cond_0
    sget-object v0, Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;->mInstance:Lcom/android/systemui/edgelighting/manager/EdgeLightingSAUtil;

    return-object v0
.end method

.method public static sendEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 307
    sget-boolean p0, Lcom/android/systemui/edgelighting/Constants;->IS_UNIT_TEST:Z

    return-void
.end method

.method public static sendEventLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    return-void
.end method

.method public static sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static sendScreenLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public updateStatusLoggingItem(Landroid/content/Context;)V
    .locals 0

    .line 350
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void
.end method
