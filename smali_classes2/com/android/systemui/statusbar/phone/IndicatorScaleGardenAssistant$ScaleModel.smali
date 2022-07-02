.class public Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;
.super Ljava/lang/Object;
.source "IndicatorScaleGardenAssistant.java"


# instance fields
.field final FontSize:I

.field final PaddingForSignalClusterBattery:I

.field final Ratio:F

.field final StatusIconSize:I


# direct methods
.method public constructor <init>(FIII)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->Ratio:F

    .line 43
    iput p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->FontSize:I

    .line 44
    iput p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->PaddingForSignalClusterBattery:I

    .line 45
    iput p4, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->StatusIconSize:I

    return-void
.end method


# virtual methods
.method public getFontSize()I
    .locals 0

    .line 53
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->FontSize:I

    return p0
.end method

.method public getLogString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - Ratio:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->Ratio:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", FontSize:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->FontSize:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", PaddingForSignalClusterBattery:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->PaddingForSignalClusterBattery:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ", StatusIconSize:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->StatusIconSize:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPaddingForSignalClusterBattery()I
    .locals 0

    .line 57
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->PaddingForSignalClusterBattery:I

    return p0
.end method

.method public getRatio()F
    .locals 0

    .line 49
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->Ratio:F

    return p0
.end method

.method public getStatusIconSize()I
    .locals 0

    .line 61
    iget p0, p0, Lcom/android/systemui/statusbar/phone/IndicatorScaleGardenAssistant$ScaleModel;->StatusIconSize:I

    return p0
.end method
