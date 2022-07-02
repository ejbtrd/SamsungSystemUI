.class public Lcom/android/systemui/popup/data/SimTrayReverseProtectionData;
.super Ljava/lang/Object;
.source "SimTrayReverseProtectionData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBodyImage(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    .line 45
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    if-eqz p0, :cond_0

    .line 46
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_reverse_protection_dialog_body_animation:I

    goto :goto_0

    .line 47
    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_location_none_water_protection_dialog_body_animation:I

    :goto_0
    return p0

    .line 49
    :cond_1
    sget-object p0, Lcom/android/systemui/BasicRune;->POPUPUI_SIM_CARD_SLOT:Ljava/lang/String;

    const-string p1, "LOCATION_NONE"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 50
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_location_none_reverse_protection_dialog_body_animation:I

    return p0

    :cond_2
    const-string p1, "LOCATION_DL"

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 52
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_up_left_reverse_protection_body_animation:I

    return p0

    .line 54
    :cond_3
    sget p0, Lcom/android/systemui/R$drawable;->sim_card_tray_style_layer_type_dialog_body_animation:I

    return p0
.end method

.method public getBodyImageHeight(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    .line 61
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    if-eqz p0, :cond_0

    .line 62
    sget p0, Lcom/android/systemui/R$dimen;->sim_card_tray_reverse_protection_dialog_body_image_height_folder:I

    goto :goto_0

    .line 63
    :cond_0
    sget p0, Lcom/android/systemui/R$dimen;->sim_card_tray_reverse_protection_dialog_body_image_height_layer:I

    :goto_0
    return p0

    .line 65
    :cond_1
    sget p0, Lcom/android/systemui/R$dimen;->sim_card_tray_reverse_protection_dialog_body_image_height_layer:I

    return p0
.end method

.method public getBodyMessageInsertingSimCard(I)I
    .locals 0

    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    .line 33
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    if-eqz p0, :cond_0

    .line 34
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_reverse_protection_dialog_body_inserting_sim_card_folder_type:I

    goto :goto_0

    .line 35
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_reverse_protection_dialog_body_inserting_sim_card_facing_down:I

    :goto_0
    return p0

    .line 37
    :cond_1
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_FOLDERBLE_TYPE_FOLD:Z

    if-eqz p0, :cond_2

    .line 38
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_reverse_protection_dialog_body_inserting_sim_card_facing_up_when_phone_is_closed:I

    goto :goto_1

    .line 39
    :cond_2
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_reverse_protection_dialog_body_inserting_sim_card_layer_type:I

    :goto_1
    return p0
.end method

.method public getBodyMessageNoSimCard()I
    .locals 0

    .line 22
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_reverse_protection_dialog_body_no_sim_card:I

    return p0
.end method

.method public getBodyMessageWaterProofSimCard()I
    .locals 0

    .line 26
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_SD_CARD_STORAGE:Z

    if-eqz p0, :cond_0

    .line 27
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_reverse_protection_dialog_body_sim_sd_card_waterproof:I

    goto :goto_0

    .line 28
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_reverse_protection_dialog_body_sim_card_waterproof:I

    :goto_0
    return p0
.end method

.method public getTitleMessage()I
    .locals 0

    .line 16
    sget-boolean p0, Lcom/android/systemui/BasicRune;->POPUPUI_SD_CARD_STORAGE:Z

    if-eqz p0, :cond_0

    .line 17
    sget p0, Lcom/android/systemui/R$string;->sim_sd_card_tray_water_protection_dialog_title:I

    goto :goto_0

    .line 18
    :cond_0
    sget p0, Lcom/android/systemui/R$string;->sim_card_tray_water_protection_dialog_title:I

    :goto_0
    return p0
.end method
