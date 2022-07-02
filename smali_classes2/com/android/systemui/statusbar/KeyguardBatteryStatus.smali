.class public Lcom/android/systemui/statusbar/KeyguardBatteryStatus;
.super Lcom/android/settingslib/fuelgauge/BatteryStatus;
.source "KeyguardBatteryStatus.java"


# instance fields
.field public final highVoltage:Z

.field public final mSuperFastCharger:I

.field public final online:I

.field public final protectedFully:Z

.field public remaining:J

.field public final swellingMode:I


# direct methods
.method public constructor <init>(IIIIIIZIIZ)V
    .locals 8

    move-object v7, p0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 56
    invoke-direct/range {v0 .. v6}, Lcom/android/settingslib/fuelgauge/BatteryStatus;-><init>(IIIIIZ)V

    const-wide/16 v0, -0x1

    .line 35
    iput-wide v0, v7, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J

    move v0, p6

    .line 57
    iput v0, v7, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->online:I

    move v0, p7

    .line 58
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->highVoltage:Z

    move/from16 v0, p8

    .line 59
    iput v0, v7, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->swellingMode:I

    move/from16 v0, p9

    .line 60
    iput v0, v7, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSuperFastCharger:I

    move/from16 v0, p10

    .line 61
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->protectedFully:Z

    return-void
.end method

.method public constructor <init>(IIIIIIZZ)V
    .locals 11

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v10, p8

    .line 48
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;-><init>(IIIIIIZIIZ)V

    return-void
.end method


# virtual methods
.method public final getChargeEnabled()Z
    .locals 2

    .line 146
    iget v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final getChargingType()I
    .locals 2

    .line 126
    iget v0, p0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSuperFastCharger:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/16 p0, 0xe

    return p0

    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/16 p0, 0xf

    return p0

    .line 130
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->highVoltage:Z

    if-eqz v0, :cond_2

    const/16 p0, 0xb

    return p0

    .line 132
    :cond_2
    iget v0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    if-ne v0, v1, :cond_4

    .line 133
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->online:I

    const/16 v0, 0x64

    if-ne p0, v0, :cond_3

    const/16 p0, 0xd

    return p0

    :cond_3
    const/16 p0, 0xc

    return p0

    :cond_4
    const/16 p0, 0xa

    return p0
.end method

.method public final getSwellingMode()I
    .locals 1

    .line 164
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->BATTERY_SWELLING_NOTICE:Z

    if-eqz v0, :cond_1

    .line 165
    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->swellingMode:I

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_0

    const/16 p0, 0x10

    return p0

    :cond_0
    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public isBatteryLow()Z
    .locals 1

    .line 106
    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    const/16 v0, 0x14

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCharged()Z
    .locals 1

    .line 97
    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPluggedIn()Z
    .locals 2

    .line 70
    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isPluggedInWired()Z
    .locals 2

    .line 85
    iget p0, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public isProtectedFully()Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->protectedFully:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryStatus{status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",plugged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",health="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->health:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",maxChargingWattage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",remaining="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ultraFastCharger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSuperFastCharger:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
