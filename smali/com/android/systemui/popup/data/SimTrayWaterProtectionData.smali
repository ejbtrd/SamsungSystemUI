.class public Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;
.super Ljava/lang/Object;
.source "SimTrayWaterProtectionData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBodyImage()I
    .locals 1

    .line 30
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 31
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_water_protection_dialog_body_animation_tablet:I

    return p0

    .line 32
    :cond_0
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_SIM_CARD_TRAY_ON_RIGHT_WATER_PROTECTION_POPUP:Z

    if-eqz p0, :cond_1

    .line 33
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_right_water_protection_dialog_body_animation:I

    return p0

    .line 34
    :cond_1
    sget-object p0, Lcom/android/systemui/BasicRune;->POPUPUI_SIM_CARD_SLOT:Ljava/lang/String;

    const-string v0, "LOCATION_NONE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 35
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_location_none_water_protection_dialog_body_animation:I

    return p0

    :cond_2
    const-string v0, "LOCATION_DL"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 37
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_up_left_water_protection_dialog_body_animation:I

    return p0

    .line 39
    :cond_3
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_water_protection_dialog_body_animation:I

    return p0
.end method

.method public getBodyMessage(I)I
    .locals 1

    .line 23
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_SD_CARD_STORAGE:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    if-eqz p0, :cond_0

    .line 25
    sget p0, Lcom/android/systemui/R$string;->sim_sd_card_tray_water_protection_dialog_body:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_water_protection_dialog_body:I

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 26
    sget p0, Lcom/android/systemui/R$string;->sim_sd_card_tray_empty_water_protection_dialog_body:I

    goto :goto_0

    :cond_2
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_empty_water_protection_dialog_body:I

    :goto_0
    return p0
.end method

.method public getTitleMessage()I
    .locals 0

    .line 17
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_SD_CARD_STORAGE:Z

    if-eqz p0, :cond_0

    .line 18
    sget p0, Lcom/android/systemui/R$string;->sim_sd_card_tray_water_protection_dialog_title:I

    goto :goto_0

    .line 19
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_water_protection_dialog_title:I

    :goto_0
    return p0
.end method
