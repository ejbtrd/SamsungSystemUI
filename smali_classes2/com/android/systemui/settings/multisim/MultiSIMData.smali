.class public Lcom/android/systemui/settings/multisim/MultiSIMData;
.super Ljava/lang/Object;
.source "MultiSIMData.java"


# instance fields
.field public airplaneMode:Z

.field public carrierName:[Ljava/lang/String;

.field public changingDataInternally:Z

.field public changingNetMode:Z

.field public defaultDataSimId:I

.field public defaultSmsSimId:I

.field public defaultVoiceSimId:I

.field public isCalling:Z

.field public isDataEnabled:Z

.field public isESimSlot:[Z

.field public isMultiSimReady:Z

.field public isRestrictionsForMmsUse:Z

.field public isSRoaming:Z

.field public phoneNumber:[Ljava/lang/String;

.field public simImageIdx:[I

.field public simName:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 9
    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 10
    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 11
    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    const-string v2, "SIM 1"

    const-string v3, "SIM 2"

    .line 12
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    .line 15
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    new-array v2, v1, [Z

    .line 17
    iput-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    new-array v2, v1, [Ljava/lang/String;

    .line 18
    iput-object v2, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 20
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 21
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    .line 22
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    .line 23
    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method


# virtual methods
.method public copyFrom(Lcom/android/systemui/settings/multisim/MultiSIMData;)V
    .locals 2
    .param p1    # Lcom/android/systemui/settings/multisim/MultiSIMData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 50
    iget v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    .line 51
    iget v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    .line 52
    iget v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    iput v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    .line 53
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    .line 54
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    .line 55
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    .line 56
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    .line 57
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    .line 58
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    .line 59
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    .line 60
    iget-boolean v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    iput-boolean v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    .line 61
    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 62
    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 63
    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([ZI)[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    .line 64
    iget-object v0, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 65
    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 29
    :cond_1
    check-cast p1, Lcom/android/systemui/settings/multisim/MultiSIMData;

    .line 30
    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    iget v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    iget v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    iget v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    iget-boolean v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 41
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 42
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    .line 43
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 44
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    iget-object p1, p1, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 45
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MultiSIMData{mDefaultVoiceSimId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultVoiceSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultSmsSimId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultSmsSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultDataSimId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->defaultDataSimId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", SimImageIdx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simImageIdx:[I

    .line 74
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", SimName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->simName:[Ljava/lang/String;

    .line 75
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAirplaneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->airplaneMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChangNetModeDelaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingNetMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSRoaming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isSRoaming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mChangingDataInternally="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->changingDataInternally:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsESimSlot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isESimSlot:[Z

    .line 80
    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", carrierName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->carrierName:[Ljava/lang/String;

    .line 81
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->phoneNumber:[Ljava/lang/String;

    .line 82
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isDataEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isDataEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isRestrictionsForMmsUse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isRestrictionsForMmsUse:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isMultiSimReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isMultiSimReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isCalling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/settings/multisim/MultiSIMData;->isCalling:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
