.class public Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;
.super Ljava/lang/Object;
.source "SlimIndicatorCarrierCrew.java"


# static fields
.field private static CACHED_VALUE_FALSE:I = -0x1

.field private static CACHED_VALUE_RAW:I = 0x0

.field private static CACHED_VALUE_TRUE:I = 0x1


# instance fields
.field private mIsHomeCarrierDisabled:I

.field private mIsLockCarrierDisabled:I

.field private mIsPanelCarrierDisabled:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_RAW:I

    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsHomeCarrierDisabled:I

    .line 34
    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsLockCarrierDisabled:I

    .line 35
    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsPanelCarrierDisabled:I

    return-void
.end method


# virtual methods
.method public isHomeCarrierDisabled()Z
    .locals 1

    .line 38
    iget p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsHomeCarrierDisabled:I

    sget v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isLockCarrierDisabled()Z
    .locals 1

    .line 41
    iget p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsLockCarrierDisabled:I

    sget v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isPanelCarrierDisabled()Z
    .locals 1

    .line 44
    iget p0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsPanelCarrierDisabled:I

    sget v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public updateAllData(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    const-string/jumbo v0, "slimindicator_lock_carrier"

    .line 70
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string/jumbo v1, "slimindicator_home_carrier"

    .line 71
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string/jumbo v2, "slimindicator_panel_carrier"

    .line 72
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz v0, :cond_0

    .line 73
    sget v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_FALSE:I

    :goto_0
    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsLockCarrierDisabled:I

    if-eqz v1, :cond_1

    .line 74
    sget v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_FALSE:I

    :goto_1
    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsHomeCarrierDisabled:I

    if-eqz p1, :cond_2

    .line 75
    sget p1, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_TRUE:I

    goto :goto_2

    :cond_2
    sget p1, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->CACHED_VALUE_FALSE:I

    :goto_2
    iput p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorCarrierCrew;->mIsPanelCarrierDisabled:I

    :cond_3
    return-void
.end method
