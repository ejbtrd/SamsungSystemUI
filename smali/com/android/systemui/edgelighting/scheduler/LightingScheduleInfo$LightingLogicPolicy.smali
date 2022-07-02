.class public Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;
.super Ljava/lang/Object;
.source "LightingScheduleInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LightingLogicPolicy"
.end annotation


# instance fields
.field isNeedLightOnWhenTurnOveredLcdOff:Z

.field isNeedLightOnWhenTurnOveredLcdOn:Z

.field isNeedLightOnWhenTurnRightedLcdOff:Z

.field isNeedLightOnWhenTurnRightedLcdOn:Z

.field isNeedToKeepWhenLcdOff:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 420
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedToKeepWhenLcdOff:Z

    .line 421
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOn:Z

    .line 422
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnOveredLcdOff:Z

    .line 423
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOn:Z

    .line 424
    iput-boolean v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;->isNeedLightOnWhenTurnRightedLcdOff:Z

    return-void
.end method
